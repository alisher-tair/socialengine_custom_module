<?php

class Article_Form_Create extends Engine_Form
{
    public function init()
    {
        $this->setTitle('Write New Article')
            ->setDescription('Please, fill in the fields below.')
            ->setAttrib('name', 'articles_create')
            ->setAttrib('enctype', 'multipart/form-data');
        $user = Engine_Api::_()->user()->getViewer();
        $user_level = Engine_Api::_()->user()->getViewer()->level_id;

        $this->addElement('Text', 'title', array(
            'label' => 'Title',
            'allowEmpty' => false,
            'required' => true,
            'filters' => array(
                new Engine_Filter_Censor(),
                'StripTags',
                new Engine_Filter_StringLength(array('max' => '100'))
            ),
            'autofocus' => 'autofocus',
        ));

/*        // init to
        $this->addElement('Text', 'tags', array(
            'label' => 'Tags (Keywords)',
            'autocomplete' => 'off',
            'description' => 'Separate tags with commas.',
            'filters' => array(
                'StripTags',
                new Engine_Filter_Censor(),
            ),
        ));
        $this->tags->getDecorator("Description")->setOption("placement", "append");*/

        $editorOptions = array();

        $editorOptions['plugins'] = array(
            'table', 'fullscreen', 'media', 'preview', 'paste',
            'code', 'image', 'textcolor', 'jbimages', 'link'
        );

        $editorOptions['toolbar1'] = array(
            'undo', 'redo', 'removeformat', 'pastetext', '|',
            'code', 'image', 'jbimages', 'link', 'fullscreen',
            'preview'
        );

        $allowed_html = Engine_Api::_()->authorization()->getPermission($user_level, 'article', 'auth_html');

        $this->addElement('File', 'Filedata', array(
            'label' => 'Choose Image',
            'destination' => APPLICATION_PATH.'/public/temporary/',
            'multiFile' => 1,
            'validators' => array(
                array('Count', false, 1),
                array('Extension', false, 'jpg,jpeg,png,gif'),
            ),
        ));

        $this->addElement('TinyMce', 'description', array(
            'disableLoadDefaultDecorators' => true,
            'allowEmpty' => false,
            'required' => true,
            'decorators' => array(
                'ViewHelper'
            ),
            'editorOptions' => $editorOptions,
            'filters' => array(
                new Engine_Filter_Censor(),
                new Engine_Filter_Html(array('AllowedTags' => $allowed_html))
            ),
        ));

        $availableLabels = array(
            'everyone' => 'Everyone',
            'registered' => 'All Registered Members',
            'owner_network' => 'Friends and Networks',
            'owner_member_member' => 'Friends of Friends',
            'owner_member' => 'Friends Only',
            'owner' => 'Just me'
        );

        $viewOptions = (array) Engine_Api::_()->authorization()->getAdapter('levels')->getAllowed('article', $user, 'auth_view');
        $viewOptions = array_intersect_key($availableLabels, array_flip($viewOptions));

        if (!empty($viewOptions) && count($viewOptions) >= 1) {
            // make a hidden field
            if (count($viewOptions) == 1) {
                $this->addElement('hidden', 'auth_view', array('value' => key($viewOptions)));
                // make select box
            } else {
                $this->addElement('Select', 'auth_view', array(
                    'label' => 'Privacy',
                    'description' => 'Who may see this article?',
                    'multiOptions' => $viewOptions,
                    'value' => key($viewOptions),
                ));
                $this->auth_view->getDecorator('Description')->setOption('placement', 'append');
            }
        }

        // element auth_comment
        $commentOptions = (array) Engine_Api::_()->authorization()->getAdapter('levels')->getAllowed('article', $user, 'auth_comment');
        $commentOptions = array_intersect_key($availableLabels, array_flip($commentOptions));

        if (!empty($commentOptions) && count($commentOptions) >= 1) {
            // make hidden field
            if (count($commentOptions) == 1) {
                $this->addElement('hidden', 'auth_comment', array('value' => key($commentOptions)));
                // make select box
            } else {
                $this->addElement('Select', 'auth_comment', array(
                    'label' => 'Comment Privacy',
                    'description' => 'Who may post comments on this article?',
                    'multiOptions' => $commentOptions,
                    'value' => key($commentOptions),
                ));
                $this->auth_comment->getDecorator('Description')->setOption('placement', 'append');
            }
        }


        $this->addElement('Button', 'submit', array(
            'label' => 'Post Article',
            'type' => 'submit'
        ));
    }

    public function postArticle()
    {
        $values = $this->getValues();

        $user = Engine_Api::_()->user()->getViewer();
        $title = $values['title'];
        $description = $values['description'];
        $tags = preg_split('/[,]+/', $values['tags']);

        $db = Engine_Db_table::getDefaultAdapter();
        $db->beginTransaction();
        try {
            $table = Engine_Api::_()->getDbTable('articles', 'article');

            // insert the article into the db
            $row = $table->createRow();
            $row->user_id = $user->getIdentity();
            $row->creation_date = date('Y-m-d H:i:s');
            $row->modified_date = date('Y-m-d H:i:s');
            $row->title = $title;
            $row->description = $description;
            $row->save();
            $row->setPhoto();

            $article_id = $row->article_id;

            if ($tags) {
                $this->handleTags($article_id, $tags);
            }

            $attachment = Engine_Api::_()->getItem($row->getType(), $article_id);
            $action = Engine_Api::_()->getDbTable('actions', 'activity')->addActivity($user, $row, 'article_new');
            Engine_Api::_()->getDbTable('actions', 'activity')->attachActivity($action, $attachment);
            $db->commit();
        } catch (Exception $e) {
            $db->rollBack();
            throw $e;
        }
    }

    public function handleTags($article_id, $tags){
        $tagTable = Engine_Api::_()->getDbtable('tags', 'article');
        $tabMapTable = Engine_Api::_()->getDbtable('tagmaps', 'article');
        $tagDup = array();
        foreach( $tags as $tag )
        {

            $tag = htmlspecialchars((trim($tag)));
            if (!in_array($tag, $tagDup) && $tag !="" && strlen($tag)< 20){
                $tag_id = $this->checkTag($tag);
                // check if it is new. if new, createnew tag. else, get the tag_id and insert
                if (!$tag_id){
                    $tag_id = $this->createNewTag($tag, $article_id, $tagTable);
                }

                $tabMapTable->insert(array(
                    'blog_id' => $article_id,
                    'tag_id' => $tag_id
                ));
                $tagDup[] = $tag;
            }
            if (strlen($tag)>= 20){
                $this->_error[] = $tag;
            }
        }
    }
}

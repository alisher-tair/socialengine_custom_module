<?php

class Article_Form_Send extends Engine_Form
{
    public function init()
    {
        $this->setTitle('Send Message')
            ->setDescription('Fill in the fields below to send message to article\'s owner.')
            ->setAttrib('class', 'global_form_popup')
            ->setMethod('POST');
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
            'autofocus' => 'autofocus'
        ));

/*        $editorOptions = array();

        $editorOptions['plugins'] = array(
            'table', 'fullscreen', 'media', 'preview', 'paste',
            'code', 'image', 'textcolor', 'link'
        );

        $editorOptions['toolbar1'] = array(
            'undo', 'redo', 'removeformat', 'pastetext', '|',
            'code', 'image', 'link', 'fullscreen', 'preview'
        );*/

/*        $allowed_html = Engine_Api::_()->authorization()->getPermission($user_level, 'article', 'auth_html');

        $this->addElement('TinyMce', 'body', array(
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
        ));*/

        $this->addElement('Textarea', 'body', array(
            'allowEmpty' => false,
            'required' => true,
            'decorators' => array('ViewHelper'),
            'filters' => array(
                new Engine_Filter_Censor()
            )
        ));

        $this->addElement('Button', 'submit', array(
            'label' => 'Send Message',
            'type' => 'submit',
            'ignore' => true,
            'decoratoors' => array('ViewHelper')
        ));

        $this->addElement('Cancel', 'cancel', array(
            'label' => 'cancel',
            'type' => 'cancel',
            'link' => true,
            'prependText' => ' or ',
            'href' => '',
            'onclick' => 'parent.Smoothbox.close();',
            'decorators' => array(
                'ViewHelper'
            ),
            'class' => 'btn-cancel'
        ));

        $this->addDisplayGroup(array('submit', 'cancel'), 'buttons');
        $button_group = $this->getDisplayGroup('buttons');
    }
}
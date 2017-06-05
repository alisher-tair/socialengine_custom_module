<?php

class Article_IndexController extends Core_Controller_Action_Standard
{
  public function init()
  {
    if (!$this->_helper->requireAuth()->setAuthParams('article', null, 'view')->isValid()) return;

    $id = $this->_getParam('article_id', $this->_getParam('article_id', null));
    if ($id) {
      $table = Engine_Api::_()->getDbtable('articles', 'article');
      $article = $table->fetchRow($table->select()->where('article_id = ?', $id));
      if ($article) {
        Engine_Api::_()->core()->setSubject($article);
      }
    }
  }

  public function indexAction()
  {
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $select = $table->select()
        ->order('creation_date DESC');

    $this->view->paginator = $paginator = Zend_Paginator::factory($select);

    $paginator->setItemCountPerPage($this->_getParam('ItemCountPerPgae', 6));
    $paginator->setCurrentPageNumber($this->_getParam('page', 1));

    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;
  }

  public function createAction()
  {
    if (!$this->_helper->requireUser()->isValid()) return;
//    if (!$this->_helper->requireSubject()->isValid()) return;
    if (!$this->_helper->requireAuth()->setAuthParams('article', null, 'create')->isValid()) return;
    // render
    $this->_helper->content
      //->setNoRender
      ->setEnabled()
      ;

    // set up data needed to check quota
    $viewer = Engine_Api::_()->user()->getViewer();
    $values['user_id'] = $viewer->getIdentity();

    // prepare form
    $this->view->form = $form = new Article_Form_Create();

    // if not post or from not valid, return
    if (!$this->getRequest()->isPost()) return;
    if (!$form->isValid($this->getRequest()->getPost())) return;

    // process
    $table = Engine_Api::_()->getDbtable('articles', 'article');
    $db = $table->getAdapter();
    $db->beginTransaction();

    try {
      // create article
      $viewer = Engine_Api::_()->user()->getViewer();
      $params = $form->getValues();
      $values =  array(
        'title' => $params['title'],
        'description' => $params['description'],
        'user_id' => $viewer->getIdentity(),
      );

      $article = $table->createRow();
      $article->setFromArray($values);
      $article->save();

      // add activity
      $insert_action = true;
      if ($insert_action) {
        $this->view->article = $article->article_id;
        $action = Engine_Api::_()->getDbTable('actions', 'activity')->addActivity($viewer, $article, 'article_new');

        if ($action) {
          Engine_Api::_()->getDbTable('actions', 'activity')->attachActivity($action, $article);
        }
      }

      if (!empty($params['Filedata'])) {
        $article->setPhoto($form->Filedata);
      }

      // auth
      $auth = Engine_Api::_()->authorization()->context;
      $roles = array('owner', 'owner_member', 'owner_member_member', 'owner_network', 'registered', 'everyone');

      if (empty($params['auth_view'])) {
        $params['auth_view'] = 'everyone';
      }

      if (empty($params['auth_comment'])) {
        $params['auth_comment'] = 'everyone';
      }

      $viewMax = array_search($params['auth_view'], $roles);
      $commentMax = array_search($params['auth_comment'], $roles);

      foreach ($roles as $i => $role) {
        $auth->setAllowed($article, $role, 'view', ($i <= $viewMax));
        $auth->setAllowed($article, $role, 'comment', ($i <= $commentMax));
      }

      $db->commit();

    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }

    return $this->_helper->redirector->gotoRoute(array(), 'my_articles', true);
  }

  public function manageAction()
  {
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $user_id = Engine_Api::_()->user()->getViewer()->getIdentity();
    $select = $table->select()
                    ->where("user_id = $user_id")
                    ->order('creation_date DESC');
    $this->view->paginator = $paginator = Zend_Paginator::factory($select);

    $paginator->setItemCountPerPage($this->_getParam('ItemCountPerPage', 4));
    $paginator->setCurrentPageNumber($this->_getParam('page', 1));

    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;
  }

  public function showAction()
  {
    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;

    $viewer = Engine_Api::_()->user()->getViewer();
    $article_id = $this->getRequest()->getParam("article_id");
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $article = $table->fetchRow(
        $table->select()
              ->where('article_id = ?', $article_id)
    );

    if (!$this->_helper->requireSubject()->isValid()) return;

    if (!$this->_helper->requireAuth()->setAuthParams($article, $viewer, 'view')->isValid() ) return;
    if (!$article || !$article->getIdentity()) {
      return $this->_helper->requireSubject->forward();
    }

    $user = Engine_Api::_()->getItem('user',$article->user_id);

    $this->view->article = $article;
    $this->view->user = $user;

    $viewer = Engine_Api::_()->user()->getViewer();
    if (!$article->isOwner($viewer)) {
      $data = array('views' => new Zend_Db_Expr('views + 1'));
      $where = $table->getAdapter()->quoteInto('article_id = ?', $article->article_id);

      $table->update($data, $where);
    }


  }

  public function deleteAction()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $article = $table->fetchRow(
        $table->select()
              ->where('article_id = ?', $this->getRequest()->getParam('article_id'))
    );
    // $article = Engine_Api::_()->getItem('article', $this->getRequest()->getParam('article_id'));

    $this->view->form = $form = new Article_Form_Delete();

    if (!$article) {
      $this->view->status = false;
      $this->view->error = Zend_Registry::get('Zend_Translate')->_("Article doesn't exist or not authorized to delete");
      return;
    }

    if (!$this->getRequest()->isPost()) {
    $this->view->status = false;
    $this->view->error = Zend_Registry::get('Zend_Translate')->_('Invalid Request method');
    return;
  }

    $db = $article->getTable()->getAdapter();
    $db->beginTransaction();

    try {
      if (Engine_Api::_()->user()->getViewer()->getIdentity() && Engine_Api::_()->user()->getViewer()->getIdentity() == $article->user_id) {
        $article->delete();
        $db->commit();
      } else {
        $this->view->status = true;
        $this->view->message = Zend_Registry::get('Zend_Translate')->_('You have no rights to delete this aritcle.');
        return $this->_forward('abort', 'utility', 'core', array(
            'parentRedirect' => Zend_Controller_Front::getInstance()->getRouter()->assemble(
                array('action' => 'index'),
                'article_general', true),
            'message' => Array($this->view->message)
        ));
      }
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }

    $this->view->status = true;
    $this->view->message = Zend_Registry::get('Zend_Translate')->_('Article has been deleted.');
    return $this->_forward('success', 'utility', 'core', array(
      'parentRedirect' => Zend_Controller_Front::getInstance()->getRouter()->assemble(
          array('action' => 'manage'),
          'my_articles', true),
        'message' => Array($this->view->message)
    ));

    /*$article_id = $this->getRequest()->getParam("article_id");
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $where = $table->getAdapter()->quoteInto('article_id = ?', $article_id);
    $table->delete($where);

    return $this->_helper->redirector->gotoUrl('browse-articles');*/
  }

  public function editAction()
  {
    if (!$this->_helper->requireUser()->isValid()) return;

    $viewer = Engine_Api::_()->user()->getViewer();
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $article = $table->fetchRow(
        $table->select()
              ->where('article_id = ?', $this->_getParam('article_id'))
    );

    if (!Engine_Api::_()->core()->hasSubject('article')) {
      Engine_Api::_()->core()->setSubject($article);
    }

    if (!$this->_helper->requireSubject()->isValid()) return;
    if (!$this->_helper->requireAuth()->setAuthParams($article, $viewer, 'edit')->isValid()) return;

    // prepare form
    $this->view->form = $form = new Article_Form_Edit();
    if (empty($article->file_id)) {
      $form->removeElement('current');
    }

    // populate form
    $form->populate(array_merge($article->toArray(), array('current' => $article)));

    // auth
    $auth = Engine_Api::_()->authorization()->context;
    $roles = array('owner', 'owner_member', 'owner_member_member', 'owner_network', 'registered', 'everyone');

    foreach ($roles as $role) {
      if ($form->auth_view) {
        if ($auth->isAllowed($article, $role, 'view')) {
          $form->auth_view->setValue($role);
        }
      }

      if ($form->auth_comment) {
        if ($auth->isAllowed($article, $role, 'comment')) {
          $form->auth_comment->setValue($role);
        }
      }
    }

    // check post/form
    if (!$this->getRequest()->isPost()) return;
    if (!$form->isValid($this->getRequest()->getPost())) return;

    // process
//    $db = $table->getAdapter();
    $db = Engine_Db_Table::getDefaultAdapter();
    $db->beginTransaction();

    try {
      $values = $form->getValues();

      $article->setFromArray($values);
      $article->modified_date = date('Y-m-d H:i:s');
      $article->save();

      if (!empty($values['Filedata'])) {
        $article->setPhoto($form->Filedata);
      }

      if (empty($values['auth_view'])) {
        $values['auth_view'] = 'everyone';
      }

      if (empty($values['auth_comment'])) {
        $values['auth_comment'] = 'everyone';
      }

      $viewMax = array_search($values['auth_view'], $roles);
      $commentMax = array_search($values['auth_comment'], $roles);

      foreach ($roles as $i => $role) {
        $auth->setAllowed($article, $role, 'view', ($i <= $viewMax));
        $auth->setAllowed($article, $role, 'comment', ($i <= $commentMax));
      }

      // rebuild privace
      $actionTable = Engine_Api::_()->getDbTable('actions', 'activity');
      foreach ($actionTable->getActionsByObject($article) as $action) {
        $actionTable->resetActivityBindings($action);
      }

      $db->commit();
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }

    return $this->_helper->redirector->gotoRoute(array('article_id' => $article->article_id), 'specific_article', true);
  }

  public function sendAction()
  {
    $viewer = Engine_Api::_()->user()->getViewer();
    $toUser = Engine_Api::_()->getItem('user', $this->_getParam('user_id'));



    $this->view->form = $form = new Article_Form_Send();

    if (!$this->getRequest()->isPost()) return;
    if (!$form->isValid($this->getRequest()->getPost())) return;

    if ($toUser->getIdentity() == $viewer->getIdentity()) {
      return $this->_forward('success', 'utility', 'core', array(
          'messages' => array(Zend_Registry::get('Zend_Translate')->_('You cannot send message to yourself.')),
          'smoothboxClose' => 10000,
      ));
    }

    // process
    $db = Engine_Api::_()->getDbtable('messages', 'messages')->getAdapter();
    $db->beginTransaction();

    try {
      $values = $form->getValues();
      $mail = Engine_Api::_()->getApi('mail', 'core');
      $mail->sendSystemRaw($toUser, 'article_message_new', array(
        'sender' => $viewer->getTitle(),
        'title' => $values['title'],
        'body' => $values['body']
      ));

      /*$message = Engine_Api::_()->getApi('core', 'messages');
      $message->addMessage($toUser, $viewer, $values['title'], $values['body']);*/
      $attachment = null;

      // set new conversation
      $conversation = Engine_Api::_()->getItemTable('messages_conversation')->send(
          $viewer,
          $toUser,
          $values['title'],
          $values['body'],
          $attachment
      );

      // send notification about new message
      Engine_Api::_()->getDbtable('notifications', 'activity')->addNotification(
          $toUser,
          $viewer,
          $conversation,
          'message_new'
      );

      // increment messages counter
      Engine_Api::_()->getDbtable('statistics', 'core')->increment('messages.creations');

      $db->commit();
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }

    return $this->_forward('success', 'utility', 'core', array(
        'smoothboxClose' => true,
    ));
  }

  public function dataAction()
  {
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $profile_id = $this->_getParam('profile_id', null);
    $type = $this->_getParam('type', 'profile');
    $select = $table->select()
        ->where('user_id = ?', $profile_id)
        ->order('creation_date DESC');

    if ($type == 'popular') {
      $select = $table->select()->order('views DESC');
    }

    $this->view->paginator = $paginator = Zend_Paginator::factory($select);

    $allPages = (int) ceil($paginator->getTotalItemCount() / $this->_getParam('count'));
    $currentPage = $this->_getParam('page');
    if ($currentPage >= $allPages) {
      $this->view->status = true;
    }
    $paginator->setItemCountPerPage($this->_getParam('count', 6));
    $paginator->setCurrentPageNumber($this->_getParam('page', 2));

  }
}

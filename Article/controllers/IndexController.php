<?php

class Article_IndexController extends Core_Controller_Action_Standard
{
  public function indexAction()
  {
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $select = $table->select()
        ->order('creation_date DESC');

    $this->view->paginator = $paginator = Zend_Paginator::factory($select);

    $paginator->setItemCountPerPage($this->_getParam('ItemCountPerPgae', 4));
    $paginator->setCurrentPageNumber($this->_getParam('page', 1));

    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;
  }

  public function createAction()
  {
    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;

    if (!$this->_helper->requireUser()->isValid()) return;

    $this->view->form = $form = new Article_Form_Create();

    if (!$this->getRequest()->isPost()) {
      return;
    }

    if (!$form->isValid($this->getRequest()->getPost())) {
      return;
    }

    $db = Engine_Api::_()->getDbTable('articles', 'article')
                         ->getAdapter();
    $db->beginTransaction();



    try {
      $viewer = Engine_Api::_()->user()->getViewer();
      $values = $this->getRequest()->getPost();


      $params = array(
          'article_title' => $values['title'],
          'article_description' => $values['description'],
          'user_id' => $viewer->getIdentity()
      );

      $articleTable = Engine_Api::_()->getDbTable('articles', 'article');
      $article = $articleTable->createRow();
      $article->setFromArray($params);
      $article->save();

      $article->setPhoto($_FILES['Filedata']);

      $this->view->status = true;

      $db->commit();

      $action = Engine_Api::_()->getDbTable('actions', 'activity')->addActivity($viewer, $article, 'article_new');

      if ($action) {
        Engine_Api::_()->getDbTable('actions', 'activity')->attachActivity($action, $article);
      }
    } catch (Exception $e) {
      $db->rollBack();
      return;
    }
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
    $article_id = $this->getRequest()->getParam("id");
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $article = $table->fetchRow(
        $table->select()
              ->where('article_id = ?', $article_id)
    );

    $user = Engine_Api::_()->getItem('user',$article->user_id);

    $this->view->article = $article;
    $this->view->user = $user;

    $viewer = Engine_Api::_()->user()->getViewer();
    if (!$article->isOwner($viewer)) {
      $data = array('views' => new Zend_Db_Expr('views + 1'));
      $where = $table->getAdapter()->quoteInto('article_id = ?', $article->article_id);

      $table->update($data, $where);
    }

    $this->_helper->content
        //->setNoRender()
        ->setEnabled()
    ;
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
          array('action' => 'index'),
          'article_general', true),
        'message' => Array($this->view->message)
    ));

    /*$article_id = $this->getRequest()->getParam("article_id");
    $table = Engine_Api::_()->getDbTable('articles', 'article');
    $where = $table->getAdapter()->quoteInto('article_id = ?', $article_id);
    $table->delete($where);

    return $this->_helper->redirector->gotoUrl('browse-articles');*/
  }

  public function testAction() {
    return $this->_helper->redirector->gotoUrl('browse-articles');
  }
}

<?php

class Guest_IndexController extends Core_Controller_Action_Standard
{
  public function indexAction()
  {
    $this->view->someVar = 'someVal';
  }

  public function moreAction()
  {
    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $select = $table->select()
        ->where('viewed_user_id = ?', $this->_getParam('user_id'))
        ->order('visit_date DESC');

    $this->view->paginator = $paginator = Zend_Paginator::factory($select);

    $pagesAmount = (int) ceil($paginator->getTotalItemCount() / 10);
    $currentPage = $this->_getParam('page', 2);
    if ($currentPage >= $pagesAmount) {
      $this->view->status = true;
    }

    $paginator->setItemCountPerPage($this->_getParam('count', 10));
    $paginator->setCurrentPageNumber($this->_getParam('page', 2));
  }

  public function hideAction()
  {
    $guest_id = $this->_getParam('guest_id');

    if (!guest_id) return;

    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $db = $table->getAdapter();
    $db->beginTransaction();

    try {
      $select = $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1);
      $row = $table->fetchRow($select);
      if ($row->is_hidden == false) {
        $row->is_hidden = true;
      } else {
        $row->is_hidden = false;
      }
      $row->save();

      $db->commit();
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }
  }

  public function removeAction()
  {
    $guest_id = $this->_getParam('guest_id');

    if (!$guest_id) return;

    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $db = $table->getAdapter();
    $db->beginTransaction();

     try {
       $select = $table->select()
           ->where('guest_id = ?', $guest_id)
           ->limit(1);
       $row = $table->fetchRow($select);
       $row->delete();
       $db->commit();
     } catch (Exception $e) {
       $db->rollBack();
       throw $e;
     }
  }

  public function blockAction()
  {
    $guest_id = $this->_getParam('guest_id');

    if (!$guest_id) return;

    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $db = $table->getAdapter();
    $db->beginTransaction();

    try {
      $select = $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1);
      $row = $table->fetcchRow($select);
      if ($row->blocked == true) {
        $row->blocked = false;
      } else {
        $row->blocked = true;
      }
      $row->save();

      $db->commit();
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }
  }
}

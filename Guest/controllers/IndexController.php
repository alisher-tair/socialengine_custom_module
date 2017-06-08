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

    if (!$guest_id) return;

    $table = Engine_Api::_()->getDbtable('guests', 'guest');

    try {
      $select = $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1);
      $row = $table->fetchRow($select);

      if ($row->viewed_user_id == Engine_Api::_()->user()->getViewer()->getIdentity()) {

        $db = $table->getAdapter();
        $db->beginTransaction();

        try {
          if ($row->is_hidden == false) {
            $row->is_hidden = true;
          } else {
            $row->is_hidden = false;
          }
          $row->save();

          $db->commit();
        } catch (Exception $e) {
          $db->rollBack();
        }
      }
    } catch (Exception $e) {
      throw $e;
    }
    die;
  }

  public function removeAction()
  {
    $guest_id = $this->_getParam('guest_id');

    if (!$guest_id) return;

     try {
       $table = Engine_Api::_()->getDbtable('guests', 'guest');

       $select = $table->select()
           ->where('guest_id = ?', $guest_id)
           ->limit(1);
       $row = $table->fetchRow($select);

       if ($row->viewed_user_id == Engine_Api::_()->user()->getViewer()->getIdentity()) {

         $db = $table->getAdapter();
         $db->beginTransaction();

         try {
           $row->delete();

           $db->commit();
         } catch (Exception $e) {
           $db->rollBack();
         }
       }
     } catch (Exception $e) {
       throw $e;
     }
    die;
  }

  public function blockAction()
  {
    $guest_id = $this->_getParam('guest_id');

    if (!$guest_id) return;

    try {
      $table = Engine_Api::_()->getDbtable('guests', 'guest');
      $select = $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1);
      $row = $table->fetchRow($select);

      if ($row->viewed_user_id == Engine_Api::_()->user()->getViewer()->getIdentity()) {
        $table = Engine_Api::_()->getDbtable('blockedusers', 'guest');

        $db = $table->getAdapter();
        $db->beginTransaction();

        try {
          if ($row->isBlocked()) {
            $deleteSelect = $table->select()
                ->where('user_id = ?', $row->viewed_user_id)
                ->where('blocked_user_id = ?', $row->visitor_id)
                ->limit(1);
            $rowToDelete = $table->fetchRow($deleteSelect);
            $rowToDelete->delete();
          } else {
            $newRow = $table->createRow();
            $newRow->setFromArray(array(
                'user_id' => $row->viewed_user_id,
                'blocked_user_id' => $row->visitor_id,
            ));
            $newRow->save();
          }
          $db->commit();
        } catch (Exception $e) {
          $db->rollBack();
        }
      }
    } catch (Exception $e) {
      throw $e;
    }
    die;
  }

  public function testAction()
  {
    $table = Engine_Api::_()->getDbtable('blockedusers', 'guest');
    $db = $table->getAdapter();
    $db->beginTransaction();

    $newRow = $table->createRow();
    $newRow->setFromArray(array(
      'user_id' => 1,
      'blocked_user_id' => 10,
    ));
    $newRow->save();
    $db->commit();
  }
}

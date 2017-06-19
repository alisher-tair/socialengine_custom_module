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
    $viewer = Engine_Api::_()->user()->getViewer();
    // Stop if the user does not have rights to manage guest list
    if (!Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'guests_manage_enabled')) return;

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
    $viewer = Engine_Api::_()->user()->getViewer();
    // Stop if the user does not have rights to manage guest list
    if (!Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'guests_manage_enabled')) return;

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
    // Stop if the blocking is disabled
    if (!Engine_Api::_()->getApi('core', 'guest')->isOn('blocking')) return;

    $viewer = Engine_Api::_()->user()->getViewer();
    // Stop if the user does not have rights to manage guest list
    if (!Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'guests_manage_enabled')) return;

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
    $level_id = $this->_getParam('level');
    $action = 'display_widgets_enabled';
    $viewer = Engine_Api::_()->user()->getViewer();
    $result = Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'display_widgets_enabled');
    $this->view->row = Engine_Api::_()->getApi('core', 'guest')->isOn('record_admin_enabled');
  }

  public function guestsAction()
  {
    $table = Engine_Api::_()->getDbtable('guests', 'guest');

    try {
      $viewer = Engine_Api::_()->user()->getViewer();
      $guest = $table->fetchRow(
          $table->select()
              ->where('viewed_user_id = ?', $viewer->getIdentity())
              ->where('viewed = ?', false)
              ->order('creation_date DESC')
              ->limit(1)
      );
      $this->view->guest = $guest;
    } catch (Exception $e) {
      throw $e;
    }
  }

  public function viewedAction()
  {
    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $db = $table->getAdapter();
    $db->beginTransaction();
    $guest_id = $this->_getParam('guest_id');
    $viewer = Engine_Api::_()->user()->getViewer();

    try {
      $row = $table->fetchRow(
          $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1)
      );

      if ($row) {
        if ($row->viewed_user_id == $viewer->getIdentity()) {
          $row->viewed = true;
          $row->save();
        }
      }

      $db->commit();
    } catch (Exception $e) {
      $db->rollBack();
      throw $e;
    }
    die;
  }

  public function addAction()
  {
    $guest_id = $this->_getParam('guest_id');
    $table = Engine_Api::_()->getDbtable('guests', 'guest');
    $viewer = Engine_Api::_()->user()->getViewer();

    try {
      $row = $table->fetchRow(
          $table->select()
          ->where('guest_id = ?', $guest_id)
          ->limit(1)
      );
      if ($row) {
        if ($row->viewed_user_id == $viewer->getIdentity()) {
          $this->view->guest = $row;
        }
      }
    } catch (Exception $e) {
      throw $e;
    }
  }

  public function intervalAction()
  {
    $table = Engine_Api::_()->getDbtable('settings', 'guest');

    try {
      $row = $table->fetchRow(
          $table->select()
          ->where('settings_id = ?', 1)
          ->limit(1)
      );

      if ($row) {
        echo $row->notification_interval;
      } else {
        echo '30';
      }
    } catch (Exception $e) {
      throw $e;
    }
    die;
  }
}

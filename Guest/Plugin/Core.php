<?php

class Guest_Plugin_Core extends Zend_Controller_Plugin_Abstract
{
    public function routeShutdown()
    {
        $request = Zend_Controller_Front::getInstance()->getRequest();
        if ($request->getModuleName() == 'user' && $request->getControllerName() == 'profile' && $request->getActionName() == 'index') {
            if (!Engine_Api::_()->core()->hasSubject()) {
                $id = $request->getParam('id');
                if( null !== $id ) {
                    $subject = Engine_Api::_()->user()->getUser($id);
                    if( $subject->getIdentity() ) {
                        Engine_Api::_()->core()->setSubject($subject);
                    }
                }
            }

            $user = Engine_Api::_()->core()->getSubject('user');
            $viewer = Engine_Api::_()->user()->getViewer();

            // blocking
            $blockedTable = Engine_Api::_()->getDbtable('blockedusers', 'guest');

            $select = $blockedTable->select()
                ->where('user_id = ?', $user->getIdentity())
                ->where('blocked_user_id = ?', $viewer->getIdentity())
                ->limit(1);
            // process
            try {
                $row = $blockedTable->fetchRow($select);
                if ($row) {
                    $request->setModuleName('core');
                    $request->setControllerName('error');
                    $request->setActionName('requireauth');
                }
            } catch (Exception $e) {
                return;
            }

            // collect data to guests table
            $guestTable = Engine_Api::_()->getDbtable('guests', 'guest');
            $db = $guestTable->getAdapter();
            $db->beginTransaction();

            // process
            try {
                $selectGuest = $guestTable->select()
                    ->where('viewed_user_id = ?', $user->getIdentity())
                    ->where('visitor_id = ?', $viewer->getIdentity())
                    ->limit(1);
                $guest = $guestTable->fetchRow($selectGuest);

                if ($guest) {
                    if (!$guest->isBlocked()) {
                        $guest->visit_date = date('Y-m-d H:i:s');
                        $guest->save();
                    }
                } else {
                    if ($user->getIdentity() !== $viewer->getIdentity() && $viewer->getIdentity() !== 0) {
                        $newRow = $guestTable->createRow();
                        $newRow->setFromArray(array(
                            'visitor_id' => $viewer->getIdentity(),
                            'viewed_user_id' => $user->getidentity(),
                            'visit_date' => date('Y-m-d H:i:s')
                        ));
                        $newRow->save();
                    }
                }
                $db->commit();
            } catch (Exception $e) {
                $db->rollBack();
                throw $e;
            }
        }
    }
}
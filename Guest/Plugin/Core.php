<?php

class Guest_Plugin_Core extends Zend_Controller_Plugin_Abstract
{
    public function routeShutdown()
    {
        $request = Zend_Controller_Front::getInstance()->getRequest();
        $moduleOn = Engine_Api::_()->getApi('core', 'guest')->isOn('guest_enabled');
        $blockOn = Engine_Api::_()->getApi('core', 'guest')->isOn('blocking');
        $recordAdminEnabled = Engine_Api::_()->getApi('core', 'guest')->isOn('record_admin_enabled');

        if ($request->getModuleName() == 'user' && $request->getControllerName() == 'profile' && $request->getActionName() == 'index' && $moduleOn) {
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

            // block if it's enabled
            if ($blockOn) {
                // blocking
                $blockedTable = Engine_Api::_()->getDbtable('blockedusers', 'guest');

                // process
                try {
                    $select = $blockedTable->select()
                        ->where('user_id = ?', $user->getIdentity())
                        ->where('blocked_user_id = ?', $viewer->getIdentity())
                        ->limit(1);
                    $row = $blockedTable->fetchRow($select);
                    if ($row) {
                        $request->setModuleName('core');
                        $request->setControllerName('error');
                        $request->setActionName('requireauth');
                    }
                } catch (Exception $e) {
                    return;
                }
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
                    if ($blockOn) {
                        if (!$guest->isBlocked()) {
                            $guest->visit_date = date('Y-m-d H:i:s');
                            $guest->save();
                        }
                    } else if (!$recordAdminEnabled) {
                        if (!$viewer->level_id == '1') {
                            $guest->visit_date = date('Y-m-d H:i:s');
                            $guest->save();
                        }
                    } else {
                        $guest->visit_date = date('Y-m-d H:i:s');
                        $guest->save();
                    }
                } else {
                    // Check whether data collection for this type of user is enabled
                    // and viewer not the owner of the page
                    $collectDataEnabled = Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'collect_data_enabled');
                    if ($user->getIdentity() !== $viewer->getIdentity() && $viewer->getIdentity() !== 0 && $collectDataEnabled) {
                        if (!$recordAdminEnabled) {
                            if (!$viewer->level_id == '1') {
                                $newRow = $guestTable->createRow();
                                $newRow->setFromArray(array(
                                    'visitor_id' => $viewer->getIdentity(),
                                    'viewed_user_id' => $user->getidentity(),
                                    'visit_date' => date('Y-m-d H:i:s')
                                ));
                                $newRow->save();
                            }
                        } else {
                            $newRow = $guestTable->createRow();
                            $newRow->setFromArray(array(
                                'visitor_id' => $viewer->getIdentity(),
                                'viewed_user_id' => $user->getidentity(),
                                'visit_date' => date('Y-m-d H:i:s')
                            ));
                            $newRow->save();
                        }
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
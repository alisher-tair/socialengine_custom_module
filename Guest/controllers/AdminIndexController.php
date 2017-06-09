<?php

class Guest_AdminIndexController extends Core_Controller_Action_Admin
{
    public function indexAction()
    {
        $this->view->navigation = $navigation = Engine_Api::_()->getApi('menus', 'core')->getNavigation('guest_admin_main', array(), 'guest_admin_main_settings');

        $this->view->form = $form = new Guest_Form_Admin_Global();

        if (!$this->getRequest()->isPost()) return;

        $params = $this->getRequest()->getParams();

        if (!$form->isValid($params)) return;

        $settings = Engine_Api::_()->getApi('settings', 'core');

        $settings->__set('guest.record.admin.enabled', (int) ((boolean) $form->getValue('record_admin')));
        $settings->__set('guest.enabled', (int) ((boolean) $form->getValue('guests_manage')));
        $settings->__set('guest.blocking.enabled', (int) ((boolean) $form->getValue('blocking')));

        $table = Engine_Api::_()->getDbtable('settings', 'guest');

        $db = $table->getAdapter();
        $db->beginTransaction();

        try {
            $row = $table->fetchRow($table->select()->where('settings_id = ?', 1)->limit(1));
            $row->guest_enabled = (int) ((boolean) $form->getValue('guests_manage'));
            $row->record_admin_enabled = (int) ((boolean) $form->getValue('record_admin'));
            $row->blocking = (int) ((boolean) $form->getValue('blocking'));
            $row->save();
            $db->commit();
        } catch (Exception $e) {
            $db->rollBack();
            throw $e;
        }

        // enable/disable module "Guests"
        /*$modulesTable = Engine_Api::_()->getDbtable('modules', 'core');
        $modulesDb = $modulesTable->getAdapter();
        $modulesDb->beginTransaction();

        try {
            $guestRow = $modulesTable->fetchRow($modulesTable->select()->where('name = ?', 'guest')->limit(1));
            if ((boolean) $form->getValue('guests_manage')) {
                if (!$guestRow->enabled) {
                    $guestRow->enabled = true;
                    $guestRow->save();
                    $guestRow->commit();
                }
            } else {
                if ($guestRow->enabled) {
                    $guestRow->enabled = false;
                    $guestRow->save();
                    $modulesDb->commit();
                }
            }
        } catch (Exception $e) {
            $modulesDb->rollBack();
            throw $e;
        }*/

        $form->addNotice('Settings have been successfully saved');

    }

    public function levelsAction()
    {
        $this->view->navigation = $navigation = Engine_Api::_()->getApi('menus', 'core')->getNavigation('guest_admin_main', array(), 'guest_admin_main_levels');

        $this->view->form = $form = new Guest_Form_Admin_Levels();
        $level_id = $this->_getParam('id', 1);

        $form->level_id->setValue($level_id);
        $allowTable = Engine_Api::_()->getDbtable('allow', 'guest');

        if (!$this->getRequest()->isPost()) {
            if (null !== $level_id) {
                try {
                    $allowRow = $allowTable->fetchRow($allowTable->select()->where('level_id = ?', $level_id)->limit(1));
                    if (!empty($allowRow)) {
                        $form->display->setValue($allowRow->display_widgets_enabled);
                        $form->collect->setValue($allowRow->collect_data_enabled);
                        $form->manage->setValue($allowRow->guests_manage_enabled);
                        return;
                    }
                } catch (Exception $e) {
                    throw $e;
                }
            }
            return;
        }

        // check validity
        if (!$form->isValid($this->getRequest()->getPost())) return;

        // process
        $values = $form->getValues();
        $db = $allowTable->getAdapter();
        $db->beginTransaction();

        try {
            $allowRow = $allowTable->fetchRow($allowTable->select()->where('level_id = ?', $level_id)->limit(1));
            if (!empty($allowRow)) {
                $allowRow->setFromArray(array(
                    'display_widgets_enabled' => $values['display'],
                    'collect_data_enabled' => $values['collect'],
                    'guests_manage_enabled' => $values['manage']
                ));
            } else {
                $allowRow = $allowTable->createRow();
                $allowRow->setFromArray(array(
                    'level_id' => $level_id,
                    'display_widgets_enabled' => $values['display'],
                    'collect_data_enabled' => $values['collect'],
                    'guests_manage_enabled' => $values['manage']
                ));
            }
            $allowRow->save();
            $db->commit();
        } catch (Exception $e) {
            $db->rollBack();
            throw $e;
        }

        $form->addNotice('Settings have been successfully saved');
    }
}
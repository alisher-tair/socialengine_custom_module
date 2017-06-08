<?php

class Guest_Installer extends Engine_Package_Installer_Module
{
    public function onInstall()
    {
        $this->_addUserProfileGuests();
        $this->_addUserProfileGuestsManage();

        parent::onInstall();
    }

    protected function _addUserProfileGuests()
    {
        $db = $this->getDb();
        $select = new Zend_Db_Select($db);

        // profile page
        $select
            ->from('engine4_core_pages')
            ->where('name = ?', 'user_profile_index')
            ->limit(1);
        $page_id = $select->query()->fetchObject()->page_id;

        // guest.profile-guests

        // check if it's already been placed
        $select = new Zend_Db_Select($db);
        $select
            ->from('engine4_core_content')
            ->where('page_id = ?', $page_id)
            ->where('type = ?', 'widget')
            ->where('name = ?', 'guest.profile-guests');
        $info = $select->query()->fetch();

        if (empty($info)) {
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('page_id = ?', $page_id)
                ->where('type = ?', 'container')
                ->limit(1);
            $container_id = $select->query()->fetchObject()->content_id;

            // left_id
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('parent_content_id = ?', $container_id)
                ->where('type = ?', 'container')
                ->where('name = ?', 'left')
                ->limit(1);
            $left_id = $select->query()->fetchObject()->content_id;

            $db->insert('engine4_core_content', array(
                'page_id' => $page_id,
                'type' => 'widget',
                'name' => 'guest.profile-guests',
                'parent_content_id' => $left_id,
                'order' => 9,
                'params' => '{"title":"Recent Guests"}'
            ));
        }
    }

    protected function _addUserProfileGuestsManage()
    {
        $db = $this->getDb();
        $select = new Zend_Db_Select($db);

        // profile page
        $select
            ->from('engine4_core_pages')
            ->where('name = ?', 'user_profile_index')
            ->limit(1);
        $page_id = $select->query()->fetchObject()->page_id;

        // guest.guests-manage

        // check if it's already been placed
        $select = new Zend_Db_Select($db);
        $select
            ->from('engine4_core_content')
            ->where('page_id = ?', $page_id)
            ->where('type = ?', 'widget')
            ->where('name = ?', 'guest.guests-manage');
        $info = $select->query()->fetch();

        if (empty($info)) {

            // container_id
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('page_id = ?', $page_id)
                ->where('type = ?', 'container')
                ->limit(1);
            $container_id = $select->query()->fetchObject()->content_id;

            // middle_id
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('parent_content_id = ?', $container_id)
                ->where('type = ?', 'container')
                ->where('name = ?', 'middle')
                ->limit(1);
            $middle_id = $select->query()->fetchObject()->content_id;

            // tab_id (tab container) may not always be there
            $select
                ->reset('where')
                ->where('type = ?', 'widget')
                ->where('name = ?', 'core.container-tabs')
                ->where('page_id = ?', $page_id)
                ->limit(1);
            $tab_id = $select->query()->fetchObject();
            if ($tab_id && @$tab_id->content_id) {
                $tab_id = $tab_id->content_id;
            } else {
                $tab_id = null;
            }

            // tab on profile
            $db->insert('engine4_core_content', array(
                'page_id' => $page_id,
                'type' => 'widget',
                'name' => 'guest.guests-manage',
                'parent_content_id' => ($tab_id ? $tab_id : $middle_id),
                'order' => 23,
                'params' => '{"title":"Guests Manage"}',
            ));
        }
    }
}
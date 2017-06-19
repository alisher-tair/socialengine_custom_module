<?php

class Guest_Api_Core extends Core_Api_Abstract
{
    public function isAllowed($user, $action) {
        $table = Engine_Api::_()->getDbtable('allow', 'guest');
        $level_id = isset($user->level_id) ? $user->level_id : 0;
        $result = $table->fetchRow($table->select()->where('level_id = ?', $level_id)->limit(1));
        if (!empty($result)) {
            try {
                $isAllowed = $result->$action;
                return (boolean) $isAllowed;
            } catch (Exception $e) {
                return False;
            }
        }
        return True;
    }

    public function isOn($action)
    {
        $table = Engine_Api::_()->getDbtable('settings', 'guest');
        $row = $table->fetchRow($table->select()->where('settings_id = ?', 1)->limit(1));
        if (!empty($row)) {
            try {
                $isOn = $row->$action;
                return (boolean) $isOn;
            } catch (Exception $e) {
                return False;
            }
        }
        return False;
    }

    public function setInterval($func = null, $interval = 0, $times = 0)
    {
        if ($func == null) {
            $func = Engine_Api::_()->getApi('core', 'guest')->newGuests();
        }
    }
}
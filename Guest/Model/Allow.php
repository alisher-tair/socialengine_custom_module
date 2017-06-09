<?php

class Guest_Model_Allow extends Core_Model_Item_Abstract
{
    public function isAllow($action)
    {
        $table = Engine_Api::_()->getDbtable('allow', 'guest');
        $row = $table->fetchRow($table->select()->where('level_id = ?', $this->level_id)->limit(1));
        if ($row) {
            return isset($row->$action) ? True : False;
        }
        return False;
    }
}

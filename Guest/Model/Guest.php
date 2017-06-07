<?php

class Guest_Model_Guest extends Core_Model_Item_Abstract
{
    public function getUser()
    {
        $user = Engine_Api::_()->getItem('user', $this->visitor_id);
        return $user;
    }

    public function isBlocked()
    {
        $table = Engine_Api::_()->getDbtable('blockedusers', 'guest');
        $select = $table->select()
            ->where('user_id = ?', $this->viewed_user_id)
            ->where('blocked_user_id = ?', $this->visitor_id)
            ->limit(1);

        try {
            $isBlocked = $table->fetchRow($select);
            if ($isBlocked) {
                return True;
            }
        } catch (Exception $e) {
            return False;
        }

    }
}

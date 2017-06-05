<?php

class Guest_Model_Guest extends Core_Model_Item_Abstract
{
    public function getUser()
    {
        $user = Engine_Api::_()->getItem('user', $this->visitor_id);
        return $user;
    }
}

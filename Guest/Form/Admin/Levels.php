<?php

class Guest_Form_Admin_Levels extends Engine_Form
{
    public function init()
    {
        $settings = Engine_Api::_()->getDbtable('settings', 'core');
        $this
            ->setTitle('Member Levels Settings');

        $levels = array();
        $table = Engine_Api::_()->getDbtable('levels', 'authorization');

        foreach ($table->fetchAll($table->select()) as $row) {
            $levels[$row['level_id']] = $row['title'];
        }

        $this->addElement('Select', 'level_id', array(
            'label' => 'Member Level',
            'multiOptions' => $levels,
            'onchange' => 'javascript:fetchLevelSettings(this.value);',
            'ignore' => true
        ));

        // display widget for users of this level
        $this->addElement('Radio', 'display', array(
            'label' => 'Display Widgets?',
            'description' => 'Display "Profile Guests" and "Guests Manage" widgets?',
            'multiOptions' => array(
                0 => 'No, do not display widgets.',
                1 => 'Yes, display widgets.'
            ),
            'value' => 1
        ));

        // count as guest users of this level
        $this->addElement('Radio', 'collect', array(
            'label' => 'Collect data?',
            'description' => 'Collect data of this type of users for the guest widget',
            'multiOptions' => array(
                0 => 'No, do not collect data.',
                1 => 'Yes, collect data.'
            ),
            'value' => 1
        ));

        // allow manage guests for users of this level
        $this->addElement('Radio', 'manage', array(
            'label' => 'Enable guest management',
            'description' => 'Allow users of this level to manage guests',
            'multiOptions' => array(
                0 => 'Prohibit managing guest widget',
                1 => 'Allow to manage the guest widget'
            ),
            'value' => 1
        ));

        $this->addElement('Button', 'submit', array(
            'label' => 'Save Settings',
            'type' => 'submit',
            'ignore' => true
        ));
    }

    public function setLevelId($id)
    {
        $this->level_id->setValue($id);
        if($id == 5) {
            $this->removeElement('collect');
            $this->removeElement('manage');
        }
    }
}
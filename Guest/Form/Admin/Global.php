<?php

class Guest_Form_Admin_Global extends Engine_Form
{
    public function init()
    {
        $settings = Engine_Api::_()->getApi('settings', 'core');
        $this
            ->setTitle('Global Settings')
            ->setDescription('These settings affect all members in your community.');

        $this->addElement('Radio', 'record_admin', array(
            'label' => 'Record administrator visits',
            'description' => 'Record administrator visits to the guest widget?',
            'multiOptions' => array(
                0 => 'The administrator will not be displayed in the guest list',
                1  => 'The administrator will be displayed in the guest list'
            ),
            'value' => $settings->getSetting('guest.record.admin.enabled', 1)
        ));

        $this->addElement('Radio', 'guests_manage', array(
            'label' => 'Managing the plugin',
            'description' => 'Enable "Guests" plugin?',
            'multiOptions' => array(
                0 => 'Disable plugin and prevent users from editing/browsing guest list',
                1 => 'Enable the plugin and allow users to edit/browse the guest list'
            ),
            'value' => $settings->getSetting('guest.enabled', 1)
        ));

        $this->addElement('Radio', 'blocking', array(
            'label' => 'Blocking control',
            'description' => 'Enable/disable blocking guest (The lock only affects the view of the user\'s page, the information about the user in the feed or pictures will not be blocked)',
            'multiOptions' => array(
                0 => 'Prevent users from blocking guests',
                1 => 'Allow users to block guests'
            ),
            'value' => $settings->getSetting('guest.blocking', 1)
        ));

        $this->addElement('Integer', 'notification_interval', array(
            'label' => 'Notification interval',
            'description' => 'The interval between user notifications about a new guest (in seconds)',
            'allowEmpty' => false,
            'required' => true,
            'filters' => array(
                new Engine_Filter_Censor(),
                'StripTags'
            ),
            'value' => $settings->getSetting('guest.notification.interval', 30)
        ));

        $this->addElement('Radio', 'notification_settings', array(
            'label' => 'Notification settings',
            'multiOptions' => array(
                0 => 'Disable displaying of notifications',
                1 => 'Enable displaying of notifications on the site',
                2 => 'Enable displaying of notifications on the site and in the browser'
            ),
            'value' => $settings->getSetting('guest.notification.settings', 1)
        ));

        $this->addElement('Button', 'submit', array(
            'label' => 'Save Settings',
            'type' => 'submit',
            'ignore' => true,
            'decorators' => array('ViewHelper'),
        ));
    }
}
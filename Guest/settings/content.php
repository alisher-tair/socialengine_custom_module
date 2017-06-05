<?php

return array(
    array(
        'title' => 'Profile Guests',
        'description' => 'Displays info about user\'s guests.',
        'category' => 'Guests',
        'type' => 'widget',
        'name' => 'guest.profile-guests',
        'isPaginated' => false,
        'defaultParams' => array(
            'title' => 'Recent Guests'
        ),
        'requirements' => array(
            'no-subject'
        ),
    ),
    array(
        'title' => 'Guests Manage',
        'description' => 'Hide, remove or block guests.',
        'category' => 'Guests',
        'type' => 'widget',
        'name' => 'guest.guests-manage',
        'isPaginated' => true,
        'defaultParams' => array(
            'title' => 'Guests Manage'
        ),
        'requirements' => array(
            'no-subject'
        ),
    ),
);
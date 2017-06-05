<?php return array (
  'package' => 
  array (
    'type' => 'module',
    'name' => 'guest',
    'version' => '4.0.0',
    'path' => 'application/modules/Guest',
    'title' => 'Guest',
    'description' => 'information about guests',
    'author' => 'Newbie',
    'callback' => 
    array (
      'class' => 'Engine_Package_Installer_Module',
    ),
    'actions' => 
    array (
      0 => 'install',
      1 => 'upgrade',
      2 => 'refresh',
      3 => 'enable',
      4 => 'disable',
    ),
    'directories' => 
    array (
      0 => 'application/modules/Guest',
    ),
    'files' => 
    array (
      0 => 'application/languages/en/guest.csv',
    ),
  ),
); ?>
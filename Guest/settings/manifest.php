<?php return array (
  'package' => 
  array (
    'type' => 'module',
    'name' => 'guest',
    'version' => '4.0.0',
    'path' => 'application/modules/Guest',
    'title' => 'Guest',
    'description' => 'Guest',
    'author' => '<a href="http://www.hire-experts.com" title="Hire-Experts LLC" target="_blank">Hire-Experts LLC</a>',
    'dependencies' => array(
        array(
            'type' => 'module',
            'name' => 'core',
            'minVersion' => '4.2.0',
        ),
        array(
            'type' => 'module',
            'name' => 'hecore',
            'miniVersion' => '4.2.2',
        ),
    ),
    'callback' => 
        array (
            'path' => 'application/modules/Guest/settings/install.php',
            'class' => 'Guest_Installer',
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
    'items' => array(
        'guest'
    ),
  'routes' => array(

  ),
); ?>
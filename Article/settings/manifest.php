<?php return array (
  'package' => 
  array (
    'type' => 'module',
    'name' => 'article',
    'version' => '4.0.0',
    'path' => 'application/modules/Article',
    'title' => 'Article',
    'description' => '',
    'author' => '',
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
      0 => 'application/modules/Article',
    ),
    'files' => 
    array (
      0 => 'application/languages/en/article.csv',
    ),
  ),
  'routes' => array(
      'article_specific' => array(
          'route' => 'article/:action/:article_id/*',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'index'
          ),
          'reqs' => array(
              'article_id' => '\d+',
              'action' => '(delete|edit)',
          ),
      ),
      'article_general' => array(
          'route' => 'article/:action/*',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'index'
          ),
          'reqs' => array(
              'action' => '(index|create|viewmy)'
          ),
      ),
      'specific_article' => array(
          'route' => 'article/:id/*',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'show'
          ),
          'reqs' => array(
              'id' => '\d+'
          ),
      ),
      'browse_articles' => array(
          'route' => 'browse-articles',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'index'
          ),
      ),
      'my_articles' => array(
          'route' => 'my-articles',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'manage'
          ),
      ),
      'create_article' => array(
          'route' => 'create-article',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'create'
          ),
      ),
      'delete_article' => array(
          'route' => 'article/delete/:article_id',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'delete'
          ),
          'reqs' => array(
              'article_id' => '\d+'
          ),
      ),
  ),
); ?>
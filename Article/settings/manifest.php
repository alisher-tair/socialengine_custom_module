<?php return array (
  'package' => 
  array (
    'type' => 'module',
    'name' => 'article',
    'version' => '4.0.0',
    'path' => 'application/modules/Article',
    'title' => 'Article',
    'description' => 'Articles',
    'author' => '',
    'dependencies' => array(
        array(
            'type' => 'module',
            'name' => 'core',
            'minVersion' => '4.2.0',
        ),
    ),
    'actions' => 
    array (
      0 => 'install',
      1 => 'upgrade',
      2 => 'refresh',
      3 => 'enable',
      4 => 'disable',
    ),
    'callback' =>
        array (
            'path' => 'application/modules/Article/settings/install.php',
            'class' => 'Article_Installer',
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
    'items' => array(
        'article'
    ),
  'routes' => array(
      'article_specific' => array(
          'route' => 'articles/:action/:article_id/*',
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
          'route' => 'articles/:action/*',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'index'
          ),
          'reqs' => array(
              'action' => '(index|create|manage)'
          ),
      ),
      'specific_article' => array(
          'route' => 'articles/:article_id/*',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'show'
          ),
          'reqs' => array(
              'article_id' => '\d+'
          ),
      ),
      'article_show' => array(
          'route' => 'articles/:user_id/:article_id/:slug',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'show',
              'slug' => '',
          ),
          'reqs' => array(
              'user_id' => '\d+',
              'article_id' => '\d+'
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
          'route' => 'articles/delete/:article_id',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'delete'
          ),
          'reqs' => array(
              'article_id' => '\d+'
          ),
      ),
      'send_message' => array(
          'route' => 'articles/send/:user_id',
          'defaults' => array(
              'module' => 'article',
              'controller' => 'index',
              'action' => 'send'
          ),
          'reqs' => array(
              'user_id' => '\d+'
          ),
      ),

  ),
); ?>
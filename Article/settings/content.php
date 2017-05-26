<?php

return array(
    array(
        'title' => 'Recent Articles',
        'description' => 'Displays a list of recently posted articles.',
        'category' => 'Articles',
        'type' => 'widget',
        'name' => 'article.list-recent-articles',
        'isPaginated' => true,
        'defaultParams' => array(
            'title' => 'Recent Articles'
        ),
        'requirements' => array(
            'no-subject',
        ),
        'adminForm' => array(
            'elements' => array(
                array(
                    'Radio',
                    'recentType',
                    array(
                        'label' => 'Recent Type',
                        'multiOptions' => array(
                            'creation' => 'Creation Date',
                            'modified' => 'Modified Date',
                        ),
                        'value' => 'creation',
                    )
                ),
            )
        ),
    ),
    array(
        'title' => 'Article Browse Quick Menu',
        'description' => 'Deisplays a small menu in the article browse page.',
        'category' => 'Articles',
        'type' => 'widget',
        'name' => 'article.browse-menu-quick',
        'requirements' => array(
            'no-subject',
        ),
    ),
    array(
        'title' => 'Popular Articles',
        'description' => 'Displays a list of most viewed articles.',
        'category' => 'Articles',
        'type' => 'widget',
        'name' => 'article.list-popular-articles',
        'isPaginated' => true,
        'defaultParams' => array(
            'title' => 'Popular Articles',
        ),
        'requirements' => array(
            'no-subject',
        ),
    ),
    array(
        'title' => 'Profile Articles',
        'description' => 'Displays a list of articles posted by user.',
        'category' => 'Articles',
        'type' => 'widget',
        'name' => 'article.list-users-articles',
        'isPaginated' => true,
        'defaultParams' => array(
            'title' => 'Profile Articles'
        ),
        'requirements' => array(
            'no-subject'
        ),
    ),
);
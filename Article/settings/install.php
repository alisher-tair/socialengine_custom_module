<?php

class Article_Installer extends Engine_Package_Installer_Module
{
    public function onInstall()
    {
        $this->_addArticleManagePage();
        $this->_addArticleBrowsePage();
        $this->_addArticleShowPage();
        $this->_addArticleCreatePage();

        $this->_addUserProfileContent();

        $this->_addMenuItemArticles();

        parent::onInstall();
    }

    protected function _addArticleManagePage()
    {
        $db = $this->getDb();

        // profile page
        $page_id = $db->select()
            ->from('engine4_core_pages', 'page_id')
            ->where('name = ?', 'article_index_manage')
            ->limit(1)
            ->query()
            ->fetchColumn();

        // insert if it doesn't exist yet
        if (!$page_id) {
            // insert page
            $db->insert('engine4_core_pages', array(
                'name' => 'article_index_manage',
                'displayname' => 'Article Manage Page',
                'title' => 'My Articles',
                'description' => 'This page lists a user\'s articles.',
                'custom' => 0,
            ));
            $page_id = $db->lastInsertId();

            // insert top
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'top',
                'page_id' => $page_id,
                'order' => 1,
            ));
            $top_id = $db->lastInsertId();

            // insert main
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'main',
                'page_id' => $page_id,
                'order' => 2,
            ));
            $main_id = $db->lastInsertId();

            // insert top-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $top_id,
            ));
            $top_middle_id = $db->lastInsertId();

            // insert main-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 2,
            ));
            $main_middle_id = $db->lastInsertId();

            // insert main-right
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'right',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 1,
            ));
            $main_right_id = $db->lastInsertId();

            // insert content
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'core.content',
                'page_id' => $page_id,
                'parent_content_id' => $main_middle_id,
                'order' => 6,
            ));

            // insert list-recent-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-recent-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 8,
            ));

            // insert list-popular-articles
            $db->insert('engine4_core_content', array(
               'type' => 'widget',
                'name' => 'article.list-popular-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 9,
            ));

            // insert browse-menu-quick
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.browse-menu-quick',
                'page_id' => $page_id,
                'parent_content_id' => $top_middle_id,
                'order' => 3,
            ));
        }
    }

    protected function _addArticleCreatePage()
    {
        $db = $this->getDb();

        // profile page
        $page_id = $db->select()
            ->from('engine4_core_pages', 'page_id')
            ->where('name = ?', 'article_index_create')
            ->limit(1)
            ->query()
            ->fetchColumn();

        // insert if it doesn't exist yet
        if (!$page_id) {
            $db->insert('engine4_core_pages', array(
                'name' => 'article_index_create',
                'displayname' => 'Article Create Page',
                'title' => 'Create Article',
                'description' => 'This page is the article create page.',
                'custom' => 0,
            ));
            $page_id = $db->lastInsertId();

            // insert top
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'top',
                'page_id' => $page_id,
                'order' => 1
            ));
            $top_id = $db->lastInsertId();

            // insert main
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'main',
                'page_id' => $page_id,
                'order' => 2,
            ));
            $main_id = $db->lastInsertId();

            // insert main-right
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'right',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 5,
            ));
            $main_right_id = $db->lastInsertId();

            // insert top-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $top_id,
                'order' => 6,
            ));
            $top_middle_id = $db->lastInsertId();

            // insert main-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 6,
            ));
            $main_middle_id = $db->lastInsertId();

            // insert core.content
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'core.content',
                'page_id' => $page_id,
                'parent_content_id' => $main_middle_id,
                'order' => 6,
            ));

            // insert article.browse-menu-quick
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.browse-menu-quick',
                'page_id' => $page_id,
                'parent_content_id' => $top_middle_id,
                'order' => 3,
            ));

            // insert article.list-recent-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-recent-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 8,
            ));
        }
    }

    protected function _addArticleBrowsePage()
    {
        $db = $this->getDb();

        $page_id = $db->select()
            ->from('engine4_core_pages', 'page_id')
            ->where('name = ?', 'article_index_index')
            ->limit(1)
            ->query()
            ->fetchColumn();

        // insert if it doesn't exist yet
        if (!$page_id) {
            // inesrt page
            $db->insert('engine4_core_pages', array(
                'name' => 'article_index_index',
                'displayname' => 'Article Browse Page',
                'title' => 'Article Browse',
                'description' => 'This page lists articles',
                'custom' => 0,
            ));
            $page_id = $db->lastInsertId();

            // insert top
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'top',
                'page_id' => $page_id,
                'order' => 1,
            ));
            $top_id = $db->lastInsertId();

            // insert main
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'main',
                'page_id' => $page_id,
                'order' => 2,
            ));
            $main_id = $db->lastInsertId();

            // insert main-right
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'right',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 5,
            ));
            $main_right_id = $db->lastInsertId();

            // insert top-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $top_id,
                'order' => 6,
            ));
            $top_middle_id = $db->lastInsertId();

            // insert main-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 6,
            ));
            $main_middle_id = $db->lastInsertId();

            // insert core.content
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'core.content',
                'page_id' => $page_id,
                'parent_content_id' => $main_middle_id,
                'order' => 6,
            ));

            // insert article.browse-menu-quick
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.browse-menu-quick',
                'page_id' => $page_id,
                'parent_content_id' => $top_middle_id,
                'order' => 3
            ));

            // insert article.list-recent-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-recent-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 8,
            ));

            // insert article.list-popular-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-popular-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 9,
            ));
        }
    }

    protected function _addArticleShowPage()
    {
        $db = $this->getDb();

        // show page
        $page_id = $db->select()
            ->from('engine4_core_pages', 'page_id')
            ->where('name = ?', 'article_index_show')
            ->limit(1)
            ->query()
            ->fetchColumn();

        // insert if it doesn't exist yet
        if (!$page_id) {
            // insert page
            $db->insert('engine4_core_pages', array(
                'name' => 'article_index_show',
                'displayname' => 'Article Show Page',
                'title' => 'Show Article',
                'description' => 'This page displays article.',
                'custom' => 0,
            ));
            $page_id = $db->lastInsertId();

            // insert top
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'top',
                'page_id' => $page_id,
                'order' => 1,
            ));
            $top_id = $db->lastInsertId();

            // insert main
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'main',
                'page_id' => $page_id,
                'order' => 2,
            ));
            $main_id = $db->lastInsertId();

            // insert main-right
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'right',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 5,
            ));
            $main_right_id = $db->lastInsertId();

            // insert top-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $top_id,
                'order' => 6,
            ));
            $top_middle_id = $db->lastInsertId();

            // insert main-middle
            $db->insert('engine4_core_content', array(
                'type' => 'container',
                'name' => 'middle',
                'page_id' => $page_id,
                'parent_content_id' => $main_id,
                'order' => 6,
            ));
            $main_middle_id = $db->lastInsertId();

            // insert core.content
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'core.content',
                'page_id' => $page_id,
                'parent_content_id' => $main_middle_id,
                'order' => 6,
            ));

            // insert core.comments
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'core.comments',
                'page_id' => $page_id,
                'parent_content_id' => $main_middle_id,
                'order' => 7,
            ));

            // insert article.browse-menu-quick
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.browse-menu-quick',
                'page_id' => $page_id,
                'parent_content_id' => $top_middle_id,
                'order' => 3,
            ));

            // insert article.list-recent-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-recent-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 9
            ));

            // insert article.list-popular-articles
            $db->insert('engine4_core_content', array(
                'type' => 'widget',
                'name' => 'article.list-popular-articles',
                'page_id' => $page_id,
                'parent_content_id' => $main_right_id,
                'order' => 10,
            ));
        }
    }

    protected function _addUserProfileContent()
    {
        $db = $this->getDb();
        $select = new Zend_Db_Select($db);

        // profile page
        $select
            ->from('engine4_core_pages')
            ->where('name = ?', 'user_profile_index')
            ->limit(1);
        $page_id = $select->query()->fetchObject()->page_id;

        // article.list-users-articles

        // check if it's already been placed
        $select = new Zend_Db_Select($db);
        $select
            ->from('engine4_core_content')
            ->where('page_id = ?', $page_id)
            ->where('type = ?', 'widget')
            ->where('name = ?', 'article.list-users-articles')
            ;
        $info = $select->query()->fetch();

        if (empty($info)) {
            // container_id (will always be there)
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('page_id = ?', $page_id)
                ->where('type = ?', 'container')
                ->limit(1);
            $container_id = $select->query()->fetchObject()->content_id;

            // middle_id (will always be there)
            $select = new Zend_Db_Select($db);
            $select
                ->from('engine4_core_content')
                ->where('parent_content_id = ?', $container_id)
                ->where('type = ?', 'container')
                ->where('name = ?', 'middle')
                ->limit(1);
            $middle_id = $select->query()->fetchObject()->content_id;

            // tab_id (tab container) may not always be there
            $select
                ->reset('where')
                ->where('type = ?', 'widget')
                ->where('name = ?', 'core.container-tabs')
                ->where('page_id = ?', $page_id)
                ->limit(1);
            $tab_id = $select->query()->fetchObject();
            if ($tab_id && @$tab_id->content_id) {
                $tab_id = $tab_id->content_id;
            } else {
                $tab_id = null;
            }

            // tab on profile
            $db->insert('engine4_core_content', array(
                'page_id' => $page_id,
                'type' => 'widget',
                'name' => 'article.list-users-articles',
                'parent_content_id' => ($tab_id ? $tab_id : $middle_id),
                'order' => 6,
                'params' => '{"title":"Articles","titleCount":true}',
            ));
        }
    }

    protected function _addMenuItemArticles()
    {
        $db = $this->getDb();

        // menu item
        $article_item = $db->select()
            ->from('engine4_core_menuitems', 'name')
            ->where('name = ?', 'core_main_article')
            ->limit(1)
            ->query()
            ->fetchColumn();

        if (!$article_item) {
            $db->insert('engine4_core_menuitems', array(
                'name' => 'core_main_article',
                'module' => 'article',
                'label' => 'Articles',
                'params' => '{"uri":"browse-articles","icon":""}',
                'menu' => 'core_main',
                'enabled' => 1,
                'custom' => 1,
                'order' => 999,
            ));
        }
    }
}
?>
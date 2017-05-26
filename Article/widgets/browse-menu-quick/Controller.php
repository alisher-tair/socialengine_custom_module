<?php

class Article_Widget_BrowseMenuQuickController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        $this->view->quickNavigation = $quickNavigation = Engine_Api::_()->getApi('menus', 'core')->getNavigation('article_quick');
    }
}
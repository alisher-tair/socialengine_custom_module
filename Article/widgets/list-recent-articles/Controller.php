<?php

class Article_Widget_ListRecentArticlesController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        $table = Engine_Api::_()->getDbTable('articles', 'article');
        $select = $table->select()
                        ->order('creation_date DESC')
                        ->limit(4, 0);
        $articles = $table->fetchAll($select);
        $this->view->articles = $articles;
    }
}
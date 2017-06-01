<?php

class Article_Widget_ListPopularArticlesController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        $table = Engine_Api::_()->getDbTable('articles', 'article');

        $request = Zend_Controller_Front::getInstance()->getRequest();
        $select = $table->select()
                        ->order('views DESC');
        $this->view->paginator = $paginator = Zend_Paginator::factory($select);

        $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 3));
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));

        if ($paginator->getTotalItemCount() <= 0) {
            return $this->setNoRender();
        }


    }
}
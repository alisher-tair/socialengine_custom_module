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

        $allPages = (int) ceil($paginator->getTotalItemCount() / 3);
        $currentPage = $this->_getParam('page');
        if ($currentPage >= $allPages) {
            $this->view->status = true;
        }

        $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 3));
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));

        if ($paginator->getTotalItemCount() <= 0) {
            return $this->setNoRender();
        }


    }
}
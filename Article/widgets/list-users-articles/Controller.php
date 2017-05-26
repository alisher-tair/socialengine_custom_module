<?php

class Article_Widget_ListUsersArticlesController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        $viewer = Engine_Api::_()->user()->getViewer();
        $table = Engine_Api::_()->getDbTable('articles', 'article');
        $select = $table->select()
            ->where('user_id = ?', $viewer->getIdentity())
            ->order('creation_date DESC');

        $request = Zend_Controller_Front::getInstance()->getRequest();

        $this->view->params = $params = array('text' => $request->getParam('text'));
        $this->view->paginator = $paginator = Zend_Paginator::factory($select);

        $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 4));
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));

        $this->view->simple_name = str_replace("-", "_", str_replace(".", "_", $this->getElement()->getName()));
        $this->view->paginator_type = $this->_getParam('paginator_type');


        if ($paginator->getTotalItemCount() <= 0) {
            return $this->setNoRender();
        }
    }
}
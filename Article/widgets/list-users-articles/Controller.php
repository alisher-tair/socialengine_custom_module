<?php

class Article_Widget_ListUsersArticlesController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        if (!Engine_Api::_()->core()->hasSubject('user')) return;
        $profile = Engine_Api::_()->core()->getSubject('user');
        $table = Engine_Api::_()->getDbTable('articles', 'article');

        $request = Zend_Controller_Front::getInstance()->getRequest();

        $this->view->params = $params = array('text' => $request->getParam('text'));

        $select = $table->select()
            ->where('user_id = ?', $profile->getIdentity())
            ->order('creation_date DESC');
        $this->view->profile_id = $profile->getIdentity();
        $this->view->paginator = $paginator = Zend_Paginator::factory($select);

        $allPages = (int) ceil($paginator->getTotalItemCount() / 6);
        $currentPage = $this->_getParam('page');
        if ($currentPage >= $allPages) {
            $this->view->status = true;
        }

        $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 6));
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));

        if ($paginator->getTotalItemCount() <= 0) {
            return $this->setNoRender();
        }
    }
}
<?php

class Guest_Widget_GuestsManageController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        if (!Engine_Api::_()->core()->hasSubject()) {
            return $this->setNoRender();
        }

        $user = Engine_Api::_()->core()->getSubject('user');
        $viewer = Engine_Api::_()->user()->getViewer();

        if ($user->getIdentity() !== $viewer->getIdentity()) {
            return $this->setNoRender();
        }

        $table = Engine_Api::_()->getDbtable('guests', 'guest');

        try {
            $select = $table->select()
                ->where('viewed_user_id = ?', $user->getIdentity())
                ->order('visit_date DESC');

            $this->view->paginator = $paginator = Zend_Paginator::factory($select);

            $pagesAmount = (int) ceil($paginator->getTotalItemCount() / 10);
            $currentPage = $this->_getParam('page', 1);
            if ($currentPage >= $pagesAmount) {
                $this->view->status = true;
            }

            $paginator->setItemCountPerPage($this->_getParam('itemCountPerPage', 10));
            $paginator->setCurrentPageNumber($this->_getParam('page', 1));

            if ($paginator->getTotalItemCount() <= 0) {
                return $this->setNoRender();
            }
        } catch (Exception $e) {
            throw $e;
        }
    }
}
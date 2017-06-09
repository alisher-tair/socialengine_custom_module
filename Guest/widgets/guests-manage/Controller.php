<?php

class Guest_Widget_GuestsManageController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        // if module "Guests" is disabled, no render
        if (!Engine_Api::_()->getApi('core', 'guest')->isOn('guest_enabled')) {
            return $this->setNoRender();
        }

        if (!Engine_Api::_()->core()->hasSubject()) {
            return $this->setNoRender();
        }

        $user = Engine_Api::_()->core()->getSubject('user');
        $viewer = Engine_Api::_()->user()->getViewer();

        // display widgets?
        if (!Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'display_widgets_enabled')) {
            return $this->setNoRender();
        }

        // display guests-manage widget?
        if (!Engine_Api::_()->getApi('core', 'guest')->isAllowed($viewer, 'guests_manage_enabled')) {
            return $this->setNoRender();
        }

        // if the viewer is not the owner the widget is not displayed
        if ($user->getIdentity() !== $viewer->getIdentity()) {
            return $this->setNoRender();
        }

        $table = Engine_Api::_()->getDbtable('guests', 'guest');

        try {
            $select = $table->select()
                ->where('viewed_user_id = ?', $user->getIdentity())
                ->order('visit_date DESC');

            $this->view->blockOn = $blockOn = Engine_Api::_()->getApi('core', 'guest')->isOn('blocking');
            $this->view->paginator = $paginator = Zend_Paginator::factory($select);

            // if current page is last, delete button 'load more'
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
<?php

class Guest_Widget_ProfileGuestsController extends Engine_Content_Widget_Abstract
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

        $table = Engine_Api::_()->getDbtable('guests', 'guest');

        try {
            // view guest's widget
            if ($user->getIdentity() === $viewer->getIdentity()) {
                $this->view->owner = true;
            }

            $select = $table->select()
                ->where('viewed_user_id = ?', $user->getIdentity())
                ->order('visit_date DESC')
                ->limit(5);
            $guests = $table->fetchAll($select);

            if (count($guests) <= 0) {
                return $this->setNoRender();
            }

            $this->view->guests = $guests;
        } catch (Exception $e) {
            throw $e;
        }
    }
}
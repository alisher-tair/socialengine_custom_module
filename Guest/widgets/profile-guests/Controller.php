<?php

class Guest_Widget_ProfileGuestsController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        if (!Engine_Api::_()->core()->hasSubject()) {
            return $this->setNoRender();
        }

        $user = Engine_Api::_()->core()->getSubject('user');
        $viewer = Engine_Api::_()->user()->getViewer();

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
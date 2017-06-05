<?php

class Guest_Widget_ProfileGuestsController extends Engine_Content_Widget_Abstract
{
    public function indexAction()
    {
        $table = Engine_Api::_()->getDbtable('guests', 'guest');
        $db = $table->getAdapter();
        $db->beginTransaction();

        if (Engine_Api::_()->core()->hasSubject()) {
            // collect data

            // get viewed user and guest user
            $viewed_user = Engine_Api::_()->core()->getSubject('user');
            $guest = Engine_Api::_()->user()->getViewer();

            // process
            try {
                $select = $table->select()
                    ->where('viewed_user_id = ?', $viewed_user->getIdentity())
                    ->where('visitor_id = ?', $guest->getIdentity())
                    ->limit(1);
                $row = $table->fetchRow($select);

                if ($row) {
                    // if row with viewed user AND guest user eixsts
                    // update visit date column
                    $row->visit_date = date('Y-m-d H:i:s');
                    $row->save();
                } else {
                    if ($guest->getIdentity() != $viewed_user->getIdentity() && $guest->getIdentity() !== 0) {
                        // else create new row
                        $new_row = $table->createRow();
                        $new_row->setFromArray(array(
                            'visitor_id' => $guest->getIdentity(),
                            'viewed_user_id' => $viewed_user->getIdentity(),
                            'visit_date' => date('Y-m-d H:i:s'),
                            'blocked' => false,
                        ));
                        $new_row->save();
                    }
                }

                $db->commit();
            } catch (Exception $e) {
                $db->rollBack();
                throw $e;
            }
        }

        try {
            // end collect data

            // view guest's widget
            $select = $table->select()
                ->where('viewed_user_id = ?', $viewed_user ? $viewed_user->getIdentity() : Engine_Api::_()->user()->getViewer()->getIdentity())
                ->order('visit_date DESC')
                ->limit(5);
            $guests = $table->fetchAll($select);

            $this->view->guests = $guests;
        } catch (Exception $e) {
            throw $e;
        }
    }
}
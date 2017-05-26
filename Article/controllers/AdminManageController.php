<?php

class Article_AdminManageController extends Core_Controller_Action_Admin
{
    public function indexAction()
    {
        $this->view->navigation = $navigation = Engine_Api::_()->getApi('menus', 'core')->getNavigation('article_admin_main', array(), 'article_admin_main_manage');

        if ($this->getRequest()->isPost()) {
            $values = $this->getRequest()->getPost();

            foreach ($values as $key => $value) {
                if ($key == 'delete_' . $value) {
                    $article = Engine_Api::_()->getItem('article', $value);
                    $article->delete();
                }
            }
        }

        $table = Engine_Api::_()->getDbTable('articles', 'article');
        $select = $table->select()
                        ->order('creation_date DESC');
        $this->view->paginator = $paginator = Zend_Paginator::factory($select);

        $paginator->setItemCountPerPage($this->_getParam('ItemCountPerPage', 4));
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));
    }

    public function deleteAction()
    {
        // in smoothbox
        $this->_helper->layout->setLayout('admin-simple');
        $id = $this->_getParam('id');
        $this->view->article_id = $id;

        // check post
        if ($this->getRequest()->isPost()) {
            $db = Engine_Db_Table::getDefaultAdapter();
            $db->beginTransaction();

            try {
                $table = Engine_Api::_()->getDbTable('articles', 'article');
                $where = $table->getAdapter()->quoteInto('article_id = ?', $id);
                $table->delete($where);
                $db->commit();
            } catch (Exceptino $e) {
                $db->rollBack();
                throw $e;
            }

            $this->_forward('success', 'utility', 'core', array(
                'smoothboxClose' => 10,
                'parentRefresh' => 10,
                'messages' => array('')
            ));
        }

        // output
        $this->renderScript('admin-manage/delete.tpl');
    }
}
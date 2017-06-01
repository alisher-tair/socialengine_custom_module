<?php

class Article_Model_DbTable_Articles extends Engine_Db_Table
{
    protected $_rowClass = 'Article_Model_Article';

    public function getArticlesSelect($params = array())
    {
        $table = Engine_Api::_()->getDbTable('articles', 'article');
        $rName = $table->info('name');

        $tmTable = Engine_Api::_()->getDbtable('TagMaps', 'core');
        $tmName = $tmTable->info('name');
        //$tmTable = Engine_Api::_()->getDbtable('tagmaps', 'blog');
        //$tmName = $tmTable->info('name');

        $select = $table->select()
            ->order( !empty($params['orderby']) ? $params['orderby'].' DESC' : $rName.'.creation_date DESC' );

        if( !empty($params['user_id']) && is_numeric($params['user_id']) )
        {
            $select->where($rName.'.user_id = ?', $params['user_id']);
        }

        if( !empty($params['user']) && $params['user'] instanceof User_Model_User )
        {
            $select->where($rName.'.user_id = ?', $params['user_id']->getIdentity());
        }

        if( !empty($params['users']) )
        {
            $str = (string) ( is_array($params['users']) ? "'" . join("', '", $params['users']) . "'" : $params['users'] );
            $select->where($rName.'.user_id in (?)', new Zend_Db_Expr($str));
        }

        if( !empty($params['tag']) )
        {
            $select
                ->setIntegrityCheck(false)
                ->from($rName)
                ->joinLeft($tmName, "$tmName.resource_id = $rName.blog_id")
                ->where($tmName.'.resource_type = ?', 'article')
                ->where($tmName.'.tag_id = ?', $params['tag']);
        }

        if( !empty($params['category']) )
        {
            $select->where($rName.'.category_id = ?', $params['category']);
        }

        if( isset($params['draft']) )
        {
            $select->where($rName.'.draft = ?', $params['draft']);
        }

        //else $select->group("$rName.blog_id");

        // Could we use the search indexer for this?
        if( !empty($params['search']) )
        {
            $select->where($rName.".title LIKE ? OR ".$rName.".body LIKE ?", '%'.$params['search'].'%');
        }

        if( !empty($params['start_date']) )
        {
            $select->where($rName.".creation_date > ?", date('Y-m-d', $params['start_date']));
        }

        if( !empty($params['end_date']) )
        {
            $select->where($rName.".creation_date < ?", date('Y-m-d', $params['end_date']));
        }

        if( !empty($params['visible']) )
        {
            $select->where($rName.".search = ?", $params['visible']);
        }

        return $select;
    }

    public function getArticlesPaginator($params = array())
    {
        $paginator = Zend_Paginator::factory($this->getArticlesSelect($params));
        if (!empty($params['page'])) {
            $paginator->setCurrentPageNumber($params['page']);
        }

        if (!empty($params['limit'])) {
            $paginator->setItemCountPerPage($params['limit']);
        }

        if (empty($params['limit'])) {
            $page = (int) Engine_Api::_()->getApi('settings', 'core')->getSetting('article.page', 10);
            $paginator->setItemCountPerPage($page);
        }

        return $paginator;
    }
}

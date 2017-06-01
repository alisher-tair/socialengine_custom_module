<?php

class Article_Model_Article extends Core_Model_Item_Abstract
{

    public function getHref($params = array())
    {
        $slug = $this->getSlug();

        $params = array_merge(array(
            'route' => 'article_show',
            'reset' => true,
            'user_id' => $this->user_id,
            'article_id' => $this->article_id,
            'slug' => $slug,
        ), $params);
        $route = $params['route'];
        $reset = $params['reset'];
        unset($params['route']);
        unset($params['reset']);
        return Zend_Controller_Front::getInstance()->getRouter()->assemble($params, $route, $reset);
    }

    public function getPhotoUrl($type = null)
    {
        if( empty($this->file_id) ) {
            return null;
        }

        $file = Engine_Api::_()->getItemTable('storage_file')->getFile($this->file_id, $type);
        if( !$file ) {
            return null;
        }

        return $file->map();
    }

    public function setPhoto($photo)
    {
        if( $photo instanceof Zend_Form_Element_File ) {
            $file = $photo->getFileName();
            $fileName = $file;
        } else if( $photo instanceof Storage_Model_File ) {
            $file = $photo->temporary();
            $fileName = $photo->name;
        } else if( $photo instanceof Core_Model_Item_Abstract && !empty($photo->file_id) ) {
            $tmpRow = Engine_Api::_()->getItem('storage_file', $photo->file_id);
            $file = $tmpRow->temporary();
            $fileName = $tmpRow->name;
        } else if( is_array($photo) && !empty($photo['tmp_name']) ) {
            $file = $photo['tmp_name'];
            $fileName = $photo['name'];
        } else if( is_string($photo) && file_exists($photo) ) {
            $file = $photo;
            $fileName = $photo;
        } else {
            throw new Classified_Model_Exception('invalid argument passed to setPhoto');
        }

        if( !$fileName ) {
            $fileName = basename($file);
        }

        $extension = ltrim(strrchr(basename($fileName), '.'), '.');
        $base = rtrim(substr(basename($fileName), 0, strrpos(basename($fileName), '.')), '.');
        $path = APPLICATION_PATH . DIRECTORY_SEPARATOR . 'temporary';

        $params = array(
            'parent_type' => $this->getType(),
            'parent_id' => $this->getIdentity(),
            'user_id' => $this->user_id,
            'name' => $fileName,
        );

        // Save
        $filesTable = Engine_Api::_()->getItemTable('storage_file');

        // Resize image (main)
        $mainPath = $path . DIRECTORY_SEPARATOR . $base . '_m.' . $extension;
        $image = Engine_Image::factory();
        $image->open($file)
            ->resize(720, 720)
            ->write($mainPath)
            ->destroy();

        // Resize image (normal)
        $normalPath = $path . DIRECTORY_SEPARATOR . $base . '_in.' . $extension;
        $image = Engine_Image::factory();
        $image->open($file)
            ->resize(140, 160)
            ->write($normalPath)
            ->destroy();

        // Store
        $iMain = $filesTable->createFile($mainPath, $params);
        $iIconNormal = $filesTable->createFile($normalPath, $params);

        $iMain->bridge($iIconNormal, 'thumb.normal');

        // Remove temp files
        @unlink($mainPath);
        @unlink($normalPath);

        // Update row
        $this->modified_date = date('Y-m-d H:i:s');
        $this->file_id = $iMain->file_id;
        $this->save();

        return $this;
    }

    /**
     * Gets a proxy object for the comment handler
     *
     * @return Engine_ProxyObject
     **/
    public function comments()
    {
        return new Engine_ProxyObject($this, Engine_Api::_()->getDbtable('comments', 'core'));
    }


    /**
     * Gets a proxy object for the like handler
     *
     * @return Engine_ProxyObject
     **/
    public function likes()
    {
        return new Engine_ProxyObject($this, Engine_Api::_()->getDbtable('likes', 'core'));
    }

    /**
     * Gets a proxy object for the tags handler
     *
     * @return Engine_ProxyObject
     **/
    public function tags()
    {
        return new Engine_ProxyObject($this, Engine_Api::_()->getDbtable('tags', 'core'));
    }
}
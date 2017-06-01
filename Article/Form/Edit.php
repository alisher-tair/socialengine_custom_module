<?php

class Article_Form_Edit extends Article_Form_Create{
    public function init()
    {
        $this->addElement('Image', 'current', array(
            'label' => 'Current Image',
            'ignore' => true,
            'decorators' => array(array('ViewScript', array(
                'viewScript' => '_formEditImage.tpl',
                'class' => 'form.element',
                'testing' => 'testing'
            )))
        ));
        parent::init();
        $this->SetTitle('Edit Article')
             ->setDescription('Edit your article below, then click "Save Changes" to save changes.');


        Engine_Form::addDefaultDecorators($this->current);

        $this->submit->setLabel('Save Changes');
    }
}
<?php

class Article_Form_Delete extends Engine_Form
{
    public function init()
    {
        $this->setTitle('Delete Article')
             ->setDescription('Are you sure you want to delete this article?')
             ->setAttrib('class', 'global_form_popup')
             ->setMethod('POST');

        $this->addElement('Button', 'submit', array(
            'label' => 'Delete Article',
            'type' => 'submit',
            'ignore' => true,
            'decorators' => array('ViewHelper')
        ));

        $this->addElement('Cancel', 'cancel', array(
            'label' => 'cancel',
            'link' => true,
            'prependText' => 'or ',
            'href' => '',
            'onclick' => 'parent.Smoothbox.close();',
            'decorators' => array(
                'ViewHelper'
            )
        ));

        $this->addDisplayGroup(array('submit', 'cancel'), 'buttons');
        $button_group = $this->getDisplayGroup('buttons');
    }
}
<?php

class Article_Form_Create extends Engine_Form
{
    public function init()
    {
        $this->setTitle('Write New Article')
            ->setDescription('Please, fill in the fields below.')
            ->setAttrib('name', 'articles_create')
            ->setAttrib('enctype', 'multipart/form-data');

        $this->addElement('Text', 'title', array(
            'label' => 'title',
            'allowEmpty' => false,
            'required' => true,
            'filters' => array(
                new Engine_Filter_Censor(),
                'StripTags',
                new Engine_Filter_StringLength(array('max' => '100'))
            ),
            'autofocus' => 'autofocus',
        ));

        $this->addElement('Textarea', 'description', array(
            'label' => 'Description',
            'allowEmpty' => false,
            'required' => true,
            'filters' => array(
                new Engine_Filter_Censor(),
                'StripTags'
            )
        ));

        $this->addElement('File', 'Filedata', array(
            'label' => 'Choose Image',
            'destination' => APPLICATION_PATH.'/public/temporary/',
            'multiFile' => 1,
            'validators' => array(
                array('Count', false, 1),
                array('Extension', false, 'jpg,jpeg,png,gif'),
            ),
        ));

        $this->addElement('Button', 'submit', array(
            'label' => 'Post Article',
            'type' => 'submit'
        ));
    }
}

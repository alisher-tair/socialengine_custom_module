<div class="headlines">
    <h2>
        <?php echo $this->translate('Articles'); ?>
    </h2>
</div>
<?php
    if ($this->values) {
        echo print_r($this->article['title']);
        echo print_r($this->article['description']);
    }
?>
<?php echo $this->form->render($this); ?>
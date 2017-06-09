<script type="text/javascript">
    var fetchLevelSettings =function(level_id){
        window.location.href= en4.core.baseUrl+'admin/guest/index/levels/id/'+level_id;
    }
</script>

<h2>
    <?php echo $this->translate('Guest Plugin') ?>
</h2>

<?php if (count($this->navigation)): ?>
    <div class="tabs">
        <?php echo $this->navigation()->menu()->setContainer($this->navigation)->render() ?>
    </div>
<?php endif; ?>

<div class="settings">
    <?php echo $this->form->render($this) ?>
</div>

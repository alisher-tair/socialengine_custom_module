
<div class="headline">
    <h2>
        <?php echo $this->translate('Articles');?>
    </h2>
    <?php if( count($this->quickNavigation) > 0 ): ?>
    <div class="tabs">
        <?php
        // Render the menu
        echo $this->navigation()
        ->menu()
        ->setContainer($this->quickNavigation)
        ->render();
        ?>
    </div>
    <?php endif; ?>
</div>

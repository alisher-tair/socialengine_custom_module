
    <div class="guest-info" id="guest_<?php echo $this->guest->getIdentity() ?>">
        <div id="guest-close-btn" class="pull-right"><i class="hei hei-times"></i></div>
        <b class="new-guest"><?php echo $this->translate('New guest: '); ?></b><br>
        <div class="photo" style="float: left;">
            <?php echo $this->htmlLink($this->guest->getUser()->getHref(), $this->itemPhoto($this->guest->getUser(), 'thumb.icon'), array('class' => 'thumb guest-photo')); ?>
        </div>
        <div class="info">
            <div class="title">
                <?php echo $this->htmlLink($this->guest->getUser()->getHref(), $this->guest->getUser()->getTitle()); ?>
            </div>
            <div class="stats">
                <?php echo $this->timestamp($this->guest->visit_date) ?>
            </div>
        </div>
        <div class="clear"></div>
    </div>

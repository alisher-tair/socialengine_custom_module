<div class="photo">
    <?php echo $this->htmlLink($this->guest->getUser()->getHref(), $this->itemPhoto($this->guest->getUser(), 'thumb.icon'), array('class' => 'thumb')) ?>
</div>
<div class="info">
    <div class="title">
        <?php echo $this->htmlLink($this->guest->getUser()->getHref(), $this->guest->getUser()->getTitle()) ?>
    </div>
    <div class="stats">
        <?php echo $this->timestamp($this->guest->visit_date) ?>
    </div>
</div>
<?php if (count($this->guests) > 0): ?>
    <ul class="generic_list_widget">
        <?php foreach ($this->guests as $guest): ?>
            <li class="guest_<?php echo $guest->guest_id; ?> <?php echo $guest->is_hidden ? 'hidden' : '' ?>">
                <div class="photo">
                    <?php echo $this->htmlLink($guest->getUser()->getHref(), $this->itemPhoto($guest->getUser(), 'thumb.icon')); ?>
                </div>
                <div class="info">
                    <div class="title">
                        <?php echo $this->htmlLink($guest->getUser()->getHref(), $guest->getUser()->getTitle()); ?>
                    </div>
                    <div class="stats">
                        <?php echo $this->timestamp($guest->visit_date); ?>
                    </div>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

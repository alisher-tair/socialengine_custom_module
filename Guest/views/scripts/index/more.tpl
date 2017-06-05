<?php foreach ($this->paginator as $item): ?>
    <li>
        <div class="photo">
            <?php echo $this->htmlLink($item->getUser()->getHref(), $this->itemPhoto($item->getUser(), 'thumb.icon'), array('class' => 'thumb')); ?>
        </div>
        <div class="info">
            <div class="title">
                <?php echo $this->htmlLink($item->getUser()->getHref(), $item->getUser()->getTitle()); ?>
            </div>
            <div class="stats">
                <?php echo $this->timestamp($item->visit_date) ?>
            </div>
            <div class="buttons">
                <a href="javascript:void(0)" id="hide">Hide in history</a> |
                <a href="javascript:void(0)" id="remove">Remove from history</a> |
                <a href="javascript:void(0)" id="block">Block user</a>
            </div>
        </div>
    </li>
<?php endforeach; ?>

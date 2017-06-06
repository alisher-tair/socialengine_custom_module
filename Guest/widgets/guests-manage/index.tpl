<?php
$this->headScript()->appendFile($this->baseUrl() .'/application/modules/Guest/externals/scripts/core.js');
?>
<ul class="generic_list_widget">
    <?php foreach($this->paginator as $item): ?>
        <li id="guest_<?php echo $item->guest_id ?>">
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
                <span class="<?php echo $item->is_hidden ? 'bool_1' : 'bool_0' ?>">
                    <a href="javascript:void(0)" class="hide"><?php echo $item->is_hidden ? $this->translate('Show guest') : $this->translate('Hide guest') ?></a>
                </span> |
                <a href="javascript:void(0)" class="remove"><?php echo $this->translate('Remove guest') ?></a> |
                <span class="<?php echo $item->blocked ? 'bool_1' : 'bool_0' ?>">
                    <a href="javascript:void(0)" class="block"><?php echo $item->blocked ? $this->translate('Unblock guest') : $this->translate('Block guest') ?></a>
                </span>
            </div>
        </li>
    <?php endforeach; ?>

    <span id="results"></span>
    <button id="next">Load more</button>
</ul>

<?php if ($this->status): ?>
    <script type="text/javascript">
        var myBtn = $('next');
        Guest.removeBtn(myBtn);
    </script>
<?php endif; ?>

<script type="text/javascript">
    var loadBtn = $$('a#next');
    var element = $$('a#results');
    var user_id = '<?php echo $this->viewer()->getIdentity() ?>';
    Guest.loadMore(loadBtn, element, user_id);

    var hideBtn = $$('a.hide');
    Guest.hideRequest(hideBtn);

    var removeBtn = $$('a.remove');
    Guest.removeRequest(removeBtn);

    var blockBtn = $$('a.block');

    blockBtn.addEvent('click', function () {
        var that = this;
        var btnParent = that.getParent().getParent().getParent().id;
        console.log(btnParent);
    });

</script>


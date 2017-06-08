<?php
$this->headScript()->appendFile($this->baseUrl() .'/application/modules/Guest/externals/scripts/core.js');
?>

<div class="headline">
    <h3><?php echo $this->translate('Guests Manage') ?></h3>
    <p><?php echo $this->translate('Here you can hide guests in history, delete from it, or block users from viewing your page') ?></p>
</div>
<ul class="generic_list_widget target_ul" id="target_ul">
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
                <span class="<?php echo $item->isBlocked() ? 'bool_1' : 'bool_0' ?>">
                    <a href="javascript:void(0)" class="block"><?php echo $item->isBlocked() ? $this->translate('Unblock guest') : $this->translate('Block guest') ?></a>
                </span>
            </div>
        </li>
    <?php endforeach; ?>
</ul>
<button id="nextGuests">Load more</button>

<?php if ($this->status): ?>
    <script type="text/javascript">
        var myBtn = document.getElementById('nextGuests');
        if (typeof myBtn !== 'undefined' && myBtn !== null) {
            Guest.removeBtn(myBtn);
        }
    </script>
<?php endif; ?>

<script type="text/javascript">
    var user_id = '<?php echo $this->viewer()->getIdentity() ?>';
    Guest.init(user_id);

</script>


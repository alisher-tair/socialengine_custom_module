<script type="text/javascript">
    var pageAction =function(page){
        $('page').value = page;
        $('filter_form').submit();
    }
</script>

<?php foreach ($this->paginator as $item): ?>
    <div class="article-widget">
        <div class="photo">
            <?php echo $this->htmlLink($item->getHref(), $this->itemPhoto($item, 'thumb.normal'), array('class' => 'article-widget-image')); ?>
        </div>
        <div class="article-widget-title">
            <?php echo $this->htmlLink('articles/'.$item->getIdentity(), $item->getTitle()); ?>
        </div>
        <div class="clearall"></div>
        <div class="article-widget-info">

            <div class="article-widget-owner">
                <?php
                $owner = $item->getOwner();
                echo $this->translate('Posted by %1$s', $this->htmlLink($owner->getHref(), $owner->getTitle()));
                ?>
            </div>
            <div class="article-widget-content">
                <?php echo $this->string()->truncate($this->string()->stripTags($item->description), 200); ?>
            </div>
        </div>
    </div>
<?php endforeach; ?>

<?php if ($this->status): ?>
    <script type="text/javascript">
        var myBtn = $('next');
        myBtn.parentNode.removeChild(myBtn);
    </script>
<?php endif; ?>
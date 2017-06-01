<script type="text/javascript">
    var pageAction =function(page){
        $('page').value = page;
        $('filter_form').submit();
    }
</script>



<?php if ($this->paginator->getTotalItemCount() > 0): ?>
    <ul class="articles_browse">
        <?php foreach ($this->paginator as $item): ?>
            <div class="row block-article">
                <div class="image-article">
                    <div>
                        <?php echo $this->htmlLink($item->getHref(), $this->itemPhoto($item, 'thumb.normal'), array('class' => 'link-article')); ?>
                    </div>
                </div>
                <div>
                    <div class="title-article"><?php echo $this->htmlLink($item->getHref(), $item->title); ?></div>
                </div>
                <div class="clearall"></div>
                <div class="col-md-9">
                    <div class="info-article">
                        <?php echo $this->translate('Posted by'); ?>
                        <?php echo $this->htmlLink($item->getOwner()->getHref(), $item->getOwner()->getTitle()) ?>
                        <?php echo $this->translate('about'); ?>
                        <span class="info-article-time"><?php echo $this->timestamp(strtotime($item->creation_date)) ?></span>
                    </div>
                    <div class="content">
                        <?php echo $this->string()->truncate($this->string()->stripTags($item->description), 300); ?>
                    </div>
                    <div class="pull-right">
                        <?php echo $this->htmlLink('articles/'.$item->article_id, $this->translate('Read Article'), array('class' => 'btn-article-read')); ?>
                    </div>
                    <div class="clearall"></div>
                </div>
            </div>

            <hr>
        <?php endforeach; ?>
    </ul>
<?php else: ?>
    <p>There is no data.</p>
<?php endif ?>
<?php echo $this->paginationControl($this->paginator, null, null, array(
    'pageAsQuery' => true,
    'query' => $this->formValues,
    //'params' => $this->formValues,
)); ?>

<script type="text/javascript">
    $$('.custom_268').getParent().addClass('active');
</script>

<script>
    var url = window.location.href;
    url = url.split('?')[0];
    url = url.split('/');
    var lastSegment = url.pop() || url.pop();


    switch (lastSegment) {
        case 'browse-articles': $$('.custom_272').getParent().addClass('active'); break;
        case 'my-articles': $$('.custom_271').getParent().addClass('active'); break;
        case 'create-article': $$('.custom_270').getParent().addClass('active'); break;
    }
</script>
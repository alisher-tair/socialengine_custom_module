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
                <div class="col-md-3">
                    <div>
                        <?php echo $this->htmlLink('articles/'.$item->article_id, $this->itemPhoto($item, 'thumb.normal'), array('class' => 'link-article')); ?>
                    </div>
                </div>
                <div class="col-md-9">
                    <div>
                        <div class="title-article"><?php echo $this->htmlLink('articles/'.$item->article_id, $item->title); ?></div>
                    </div>
                    <div class="info-article">
                        <?php echo $this->translate('Posted by'); ?>
                        <?php echo $this->htmlLink($item->getOwner()->getHref(), $item->getOwner()->getTitle()) ?>
                        <?php echo $this->translate('about'); ?>
                        <span class="info-article-time"><?php echo $this->timestamp(strtotime($item->creation_date)) ?></span>
                    </div>
                    <div class="content">
                        <?php echo $this->string()->truncate($this->string()->stripTags($item->description), 300); ?>
                    </div>
                    <div class="btn-block pull-right">
                        <?php echo $this->htmlLink('articles/'.$item->article_id, $this->translate('Read Article'), array('class' => 'btn-article-read')); ?>
                        <?php echo $this->viewer()->getIdentity() == $item->user_id ? $this->htmllink('articles/edit/'.$item->article_id, $this->translate('Edit Article'), array('class' => 'btn-article-edit')) : ''; ?>
                        <?php echo $this->viewer()->getIdentity() == $item->user_id ? $this->htmlLink('articles/delete/'.$item->article_id, $this->translate('Delete Article'), array('format' => 'smoothbox', 'class' => 'buttonlink smoothbox btn-article-delete')) : ''; ?>
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

<script>
    var url = window.location.href;
    url = url.split('?')[0];
    url = url.split('/');
    var lastSegment = url.pop() || url.pop();


    switch (lastSegment) {
        case 'browse-articles': document.getElementById('browse-articles').addClass('active'); break;
        case 'my-articles': document.getElementById('my-articles').addClass('active'); break;
        case 'create-article': document.getElementById('create-article').addClass('active'); break;
    }
</script>

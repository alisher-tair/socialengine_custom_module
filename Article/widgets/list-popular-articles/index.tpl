<script type="text/javascript">
    var pageAction =function(page){
        $('page').value = page;
        $('filter_form').submit();
    }
</script>

<ul class="generic_list_widget">
    <?php foreach ($this->paginator as $item): ?>
        <li>
            <div class="photo">
                <?php echo $this->htmlLink($item->getHref(), $this->itemPhoto($item->getowner(), 'thumb.icon'), array('class' => 'thumb')); ?>
            </div>
            <div class="info">
                <div class="title">
                    <?php echo $this->htmlLink('article/'.$item->article_id, $item->article_title); ?>
                </div>
                <div class="stats">
                    <?php echo $this->translate(array('%s view', '%s views', $item->views), $this->locale()->toNumber($item->views)); ?>
                </div>
                <div class="owner">
                    <?php
                        $owner = $item->getOwner();
                        echo $this->translate('Posted by %1$s', $this->htmlLink($owner->getHref(), $owner->getTitle()));
                    ?>
                </div>
            </div>
            <div class="description">
                <?php echo $this->string()->truncate($this->string()->stripTags($item->article_description), 300); ?>
            </div>
        </li>
    <?php endforeach; ?>
</ul>

<?php if ($this->paginator->count() > 1): ?>
    <?php echo $this->paginationControl($this->paginator, null, array("pagination.tpl","article"), array(
        'ajax_url' => $this->url(array_merge(array('module' => 'core', 'controller' => 'widget', 'action' => 'index', 'content_id' => $this->identity, 'container' => 1),$this->params), 'default', true),
        'ajax_class' => 'layout_' . $this->simple_name,
        'params' => $this->params,
        'mini' => ($this->paginator_type == 'mini')
    ))?>
    <br />
<?php endif?>

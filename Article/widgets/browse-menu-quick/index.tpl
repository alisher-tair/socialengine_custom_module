
<div class="headline">
    <h2>
        <?php echo $this->translate('Articles');?>
    </h2>

<div class="tabs">
    <ul class="navigation">
        <li id="browse-articles"><a href="<?php echo $this->url(array('module' => 'article', 'controller' => 'index', 'action' => 'index'), 'browse_articles', true); ?>">Browse Articles</a></li>
        <li id="my-articles"><a href="<?php echo $this->url(array('module' => 'article', 'controller' => 'index', 'action' => 'manage'), 'my_articles', true) ?>">My Articles</a></li>
        <li id="create-article"><a href="<?php echo $this->url(array('module' => 'article', 'controller' => 'index', 'action' => 'create'), 'create_article', true) ?>">Create Article</a></li>
    </ul>
</div>
</div>

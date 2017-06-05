<div class="headline">
    <h2>
        <?php echo $this->translate('Recent Articles');?>
    </h2>
</div>

<?php if (count($this->articles) > 0): ?>
    <ul class="generic_list_widget">
        <?php foreach ($this->articles as $article): ?>
            <li>
                <div class="photo">
                    <?php echo $this->htmlLink($article->getHref(), $this->itemPhoto($article->getOwner(), 'thumb.icon'), array('class' => 'thumb')) ?>
                </div>
                <div class="info">
                    <div class="title">
                        <a href="/socialengine/articles/<?php echo $article->article_id; ?>"><?php echo $article->title; ?></a>
                    </div>
                    <div class="stats">
                        <?php echo $this->timestamp($article->creation_date) ?>
                    </div>
                    <div class="owner">
                        <?php
                            $owner = $article->getOwner();
                            echo $this->translate('Posted by %1$s', $this->htmlLink($owner->getHref(), $owner->getTitle()));
                        ?>
                    </div>
                </div>
                <div class="description">
                    <?php echo $this->string()->truncate($this->string()->stripTags($article->description), 300) ?>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
<?php else: ?>
    <p>There is no data</p>
<?php endif; ?>
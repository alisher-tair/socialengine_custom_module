<div class="row">
    <div class="article-image">
        <?php echo $this->itemPhoto($this->article, 'thumb.normal'); ?>
    </div>
    <div class="article-title">
        <div class="title-article-t">
            <?php echo $this->article->title; ?>
        </div>
    </div>
</div>
<hr>
<div class="info-article">
    <?php echo $this->translate('Posted by'); ?>
    <?php echo $this->htmlLink($this->article->getOwner()->getHref(), $this->article->getOwner()->getTitle()); ?>
    <?php echo $this->translate('about'); ?>
    <span class="info-article-time"><?php echo $this->timestamp(strtotime($this->article->creation_date)); ?></span>
    <?php echo $this->htmlLink('articles/send/'.$this->article->getOwner()->getIdentity(), '| Send message to owner', array('format' => 'smoothbox', 'class' => 'buttonlink smoothbox')); ?>
</div>
<div class="content">
    <p><?php echo $this->article->description; ?></p>
</div>

<?php if ($this->closePopup): ?>
    <script>
        parent.Smoothbox.close();
    </script>
<?php endif; ?>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
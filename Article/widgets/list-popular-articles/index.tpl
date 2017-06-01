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

<div id="results"></div>
<button id="next">Load more</button>
<div id="after"></div>


<script type="text/javascript">
    var myBtn = $('next');
    var block = $('results');
    var page = 1;
    myBtn.addEvent('click', function() {
        page += 1;
        var myUrl = 'article/index/data/type/popular/count/3/page/'+ page +'?format=html',
            myElement = $('results');
        var myRequest = new Request.HTML({
            url: myUrl,
            method: 'get',
            onRequest: function () {
                myBtn.set('text', 'Loading...');
            },
            onSuccess: function (trtr,trrt,responseText) {
                myBtn.set('text', 'Click');
                var temp  = new Element('div',{'html':responseText});
                temp.inject(myElement,'bottom');
            },
            onFailure: function () {
                myBtn.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
</script>

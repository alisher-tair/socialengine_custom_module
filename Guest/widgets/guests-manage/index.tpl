<?php
    $this->headScript()->prependFile($this->baseUrl() .'/application/modules/Guest/externals/scripts/core.js');
    echo $this->headScript()->toString()."\n"
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
                <a href="javascript:void(0)" id="hide" class="<?php if (is_hidden) ?>"><?php echo $item->is_hidden ? 'Unhide in history' : 'Hide in history' ?></a> |
                <a href="javascript:void(0)" id="remove">Remove from history</a> |
                <a href="javascript:void(0)" id="block">Block user</a>
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
    var myBtn = $('next');
    var block = $('results');
    var page = 1;
    var user_id = <?php echo $this->viewer()->getIdentity() ?>;
    myBtn.addEvent('click', function() {
        page += 1;
        var myUrl = 'guest/index/more/user_id/' + user_id + '/page/'+ page +'?format=html',
            myElement = $('results');
        var myRequest = new Request.HTML({
            url: myUrl,
            method: 'get',
            onRequest: function () {
                myBtn.set('text', 'Loading...');
            },
            onSuccess: function (trtr,trrt,responseText) {
                myBtn.set('text', 'Load more');
                var temp  = new Element('span',{'html':responseText});
                temp.inject(myElement,'bottom');
            },
            onFailure: function () {
                myBtn.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
</script>

<script type="text/javascript">
    var hideBtn = $('hide');
    hideBtn.addEvent('click', function () {
        var guest_id = hideBtn.getParent().getParent().id;
        var reqUrl = 'guest/index/hide/guest_id/' + guest_id.substring(6) + '?format=html';
        var element = $$("li."+guest_id);
        console.log(element);
        var myRequest = new Request.HTML({
            url: reqUrl,
            method: 'get',
            onRequest: function () {
                hideBtn.set('text', 'Loading...');
            },
            onSuccess: function () {
                if (hideBtn.get('text') == 'Hide in history') {
                    hideBtn.set('text', 'Unhide in history');
                    element.addClass('hidden');
                } else if (hideBtn.get('text') == 'Unhide in history') {
                    hideBtn.set('text', 'Hide in history');
                    element.removeClass('hidden');
                } else {
                    hideBtn.set('text', 'Failed');
                }

            },
            onFailure: function() {
                hideBtn.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
</script>

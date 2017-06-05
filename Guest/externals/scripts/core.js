Guest = {};

Guest.removeBtn = function (btn) {
    btn.parentNode.removeChild(btn);
};

Guest.loadMore = function (myBtn, block, page, user_id) {
    myBtn.addEvent('click', function() {
        page += 1;
        var myUrl = 'guest/index/more/user_id/' + user_id + 'page/'+ page +'?format=html',
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
};
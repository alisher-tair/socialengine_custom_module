Guest = {};

Guest.removeBtn = function (btn) {
    btn.parentNode.removeChild(btn);
};

Guest.loadMore = function (btn, element, user_id) {
    var page = 1;
    btn.addEvent('click', function () {
        page += 1;
        var reqUrl = 'guest/index/more/user_id/' + user_id + '/page/'+ page +'?format=html';
        var myRequest = new Request.HTML({
            url: reqUrl,
            method: 'get',
            onRequest: function () {
                btn.set('text', 'Loading...');
            },
            onSuccess: function (var1, var2, responseText) {
                btn.set('text', 'Load more');
                var temp = new Element('span', {'html': responsetext});
                temp.inject(element, 'bottom');
            },
            onFailure: function () {
                btn.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
};

Guest.hideRequest = function (btn) {
    btn.addEvent('click', function () {
        var that = this;
        var guest_id = that.getParent().getParent().getParent().id;
        var reqUrl = 'guest/index/hide/guest_id/' + guest_id.substring(6) + '?format=html';
        var element = $$("li."+guest_id);
        var myRequest = new Request.HTML({
            url: reqUrl,
            method: 'get',
            onRequest: function () {
                that.set('text', 'Loading...');
            },
            onSuccess: function () {
                if (that.getParent().get('class') == 'bool_0') {
                    that.set('text', 'Show guest');
                    element.addClass('hidden');
                    that.getParent().removeClass('bool_0');
                    that.getParent().addClass('bool_1');
                } else if (that.getParent().get('class') == 'bool_1') {
                    that.set('text', 'Hide guest');
                    element.removeClass('hidden');
                    that.getParent().removeClass('bool_1');
                    that.getParent().addClass('bool_0');
                }
            },
            onFailure: function () {
                that.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
};

Guest.removeRequest = function (btn) {
    btn.addEvent('click', function () {
        var that = this;
        var guest_id = that.getParent().getParent().id;
        var element = $$("li."+guest_id);
        var myRequest = new Request.HTML({
            url: 'guest/index/remove/guest_id/' + guest_id.substring(6) + '?format=html',
            method: 'get',
            onRequest: function () {
                that.set('text', 'Loading...');
            },
            onSuccess: function () {
                element.destroy();
                document.getElementById(guest_id).destroy();
            },
            onFailure: function () {
                that.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
};

Guest.blockRequest = function (btn) {
    btn.addEvent('click', function () {
        var that = this;
        var guest_id = that.getParent().getParent().getParent().id;
        console.log(guest_id);
        var reqUrl = 'guest/index/block/guest_id/' + guest_id.substring(6) + '?format=html';
        var myRequest = new Request.HTML({
            url: reqUrl,
            method: 'get',
            onRequest: function () {
                that.set('text', 'Loading...');
            },
            onSuccess: function () {
                if (that.getParent().get('class') == 'bool_0') {
                    that.set('text', 'Unblock guest');
                    that.getParent().removeClass('bool_0');
                    that.getParent().addClass('bool_1');
                } else if (that.getParent().get('class') == 'bool_1') {
                    that.set('text', 'Block guest');
                    that.getParent().removeClass('bool_1');
                    that.getParent().addClass('bool_0');
                }
            },
            onFailure: function () {
                that.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
};
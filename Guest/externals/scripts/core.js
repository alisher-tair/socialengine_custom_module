Guest = {};

Guest.init = function (id) {
    Guest.link_hide = $$('a.hide');
    Guest.link_remove = $$('a.remove');
    Guest.link_block = $$('a.block');

    var loadBtn = document.getElementById('nextGuests');
    var element = document.getElementById('target_ul');
    var user_id = id;

    if (typeof loadBtn !== 'undefined' &&
        typeof element !== 'undefined' &&
        typeof user_id !== 'undefined'
    ) {
        Guest.loadMore(loadBtn, element, user_id);
    }

    if (typeof Guest.link_hide !== 'undefined') {
        Guest.link_hide.addEvent('click', Guest.hideRequest);
    }

    if (typeof Guest.link_remove !== 'undefined') {
        Guest.link_remove.addEvent('click', Guest.removeRequest);
    }

    if (typeof Guest.link_block !== 'undefined') {
        Guest.link_block.addEvent('click', Guest.blockRequest);
    }
}

Guest.removeBtn = function (btn) {
    if (typeof btn !== 'undefined') {
        btn.parentNode.removeChild(btn);
    }
};

Guest.loadMore = function (btn, element, user_id) {
    var page = 1;
    btn.addEvent('click', function () {
        if (typeof Guest.link_hide !== 'undefined') {
            Guest.link_hide.removeEvent('click', Guest.hideRequest);
        }

        if (typeof Guest.link_remove !== 'undefined') {
            Guest.link_remove.removeEvent('click', Guest.removeRequest);
        }

        if (typeof Guest.link_block !== 'undefined') {
            Guest.link_block.removeEvent('click', Guest.blockRequest);
        }

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
                var temp = new Element('ul.generic_list_widget', {'html': responseText});
                var lis = temp.getElements('li');
                if(lis.length>0){
                    lis.inject(element, 'bottom');
                }

                Guest.link_hide = $$('a.hide');
                Guest.link_remove = $$('a.remove');
                Guest.link_block = $$('a.block');
                if (typeof Guest.link_hide !== 'undefined') {
                    Guest.link_hide.addEvent('click', Guest.hideRequest);
                }
                if (typeof Guest.link_remove !== 'undefined') {
                    Guest.link_remove.addEvent('click', Guest.removeRequest);
                }
                if (typeof Guest.link_block !== 'undefined') {
                    Guest.link_block.addEvent('click', Guest.blockRequest);
                }
            },
            onFailure: function () {
                btn.set('text', 'Failed');
            }
        });
        myRequest.send();
    });
};

Guest.hideRequest = function () {
    var self = this;
    var guest_id = self.getParent().getParent().getParent().id;
    var reqUrl = 'guest/index/hide/guest_id/' + guest_id.substring(6) + '?format=html';
    var element = $$("li."+guest_id);
    var myRequest = new Request.HTML({
        url: reqUrl,
        method: 'get',
        onRequest: function () {
            self.set('text', 'Loading...');
        },
        onSuccess: function () {
            if (self.getParent().get('class') == 'bool_0') {
                self.set('text', 'Show guest');
                element.addClass('hidden');
                self.getParent().removeClass('bool_0');
                self.getParent().addClass('bool_1');
            } else if (self.getParent().get('class') == 'bool_1') {
                self.set('text', 'Hide guest');
                element.removeClass('hidden');
                self.getParent().removeClass('bool_1');
                self.getParent().addClass('bool_0');
            }
        },
        onFailure: function () {
            self.set('text', 'Failed');
        }
    });
    myRequest.send();
}

Guest.removeRequest = function () {
    var do_it = confirm('Are you sure?');
    if (do_it) {
        var self = this;
        var guest_id = self.getParent().getParent().id;
        var element = $$("li."+guest_id);
        var myRequest = new Request.HTML({
            url: 'guest/index/remove/guest_id/' + guest_id.substring(6) + '?format=html',
            method: 'get',
            onRequest: function () {
                self.set('text', 'Loading...');
            },
            onSuccess: function () {
                element.destroy();
                document.getElementById(guest_id).destroy();
            },
            onFailure: function () {
                self.set('text', 'Failed');
            }
        });
        myRequest.send();
    }
}

Guest.blockRequest = function () {
    var do_it = confirm('Are you sure?');
    if (do_it) {
        var self = this;
        var guest_id = this.getParent().getParent().getParent().id;
        var myRequest = new Request.HTML({
            url: 'guest/index/block/guest_id/' + guest_id.substring(6) + '?format=html',
            method: 'get',
            onRequest: function () {
                self.set('text', 'Loading...');
            },
            onSuccess: function () {
                if (self.getParent().get('class') == 'bool_0') {
                    self.set('text', 'Unblock guest');
                    self.getParent().removeClass('bool_0');
                    self.getParent().addClass('bool_1');
                } else if (self.getParent().get('class') == 'bool_1') {
                    self.set('text', 'Block guest');
                    self.getParent().removeClass('bool_1');
                    self.getParent().addClass('bool_0');
                }
            },
            onFailure: function () {
                self.set('text', 'Failed');
            }
        });
        myRequest.send();
    }
}
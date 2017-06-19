Guest = {
    confirm_text:'Are you sure?',
    loading_text:'Loading',
    failed_text:'Failed'
};

Guest.init = function (id) {
    Guest.link_hide = $$('a.hide');
    Guest.link_remove = $$('a.remove');
    Guest.link_block = $$('a.block');

    var loadBtn = document.getElementById('nextGuests');
    var element = document.getElementById('target_ul');
    var user_id = id;

    if ((loadBtn !== null && typeof loadBtn !== 'undefined') &&
        (element !== null && typeof element !== 'undefined') &&
        (user_id !== null && typeof user_id !== 'undefined')
    ) {
        this.loadMore(loadBtn, element, user_id);
    }

    if (typeof this.link_hide !== 'undefined') {
        this.link_hide.addEvent('click', this.hideRequest);
    }

    if (typeof this.link_remove !== 'undefined') {
        this.link_remove.addEvent('click', this.removeRequest);
    }

    if (typeof this.link_block !== 'undefined') {
        this.link_block.addEvent('click', this.blockRequest);
    }
};

Guest.removeBtn = function (btn) {
    if (typeof btn !== 'undefined') {
        btn.parentNode.removeChild(btn);
    }
};

Guest.loadMore = function (btn, element, user_id) {
    var page = 1;
    var self = this;
    btn.addEvent('click', function () {
        if (typeof self.link_hide !== 'undefined') {
            self.link_hide.removeEvent('click', self.hideRequest);
        }

        if (typeof self.link_remove !== 'undefined') {
            self.link_remove.removeEvent('click', self.removeRequest);
        }

        if (typeof self.link_block !== 'undefined') {
            self.link_block.removeEvent('click', self.blockRequest);
        }

        page += 1;
        var reqUrl = 'guest/index/more/user_id/' + user_id + '/page/'+ page +'?format=html';
        var myRequest = new Request.HTML({
            url: reqUrl,
            method: 'get',
            onRequest: function () {
                btn.set('text', Guest.loading_text+'...');
            },
            onSuccess: function (var1, var2, responseText) {
                btn.set('text', 'Load more');
                var temp = new Element('ul.generic_list_widget', {'html': responseText});
                var lis = temp.getElements('li');
                if(lis.length>0){
                    lis.inject(element, 'bottom');
                }

                self.link_hide = $$('a.hide');
                self.link_remove = $$('a.remove');
                self.link_block = $$('a.block');

                if (typeof self.link_hide !== 'undefined') {
                    self.link_hide.addEvent('click', self.hideRequest);
                }
                if (typeof self.link_remove !== 'undefined') {
                    self.link_remove.addEvent('click', self.removeRequest);
                }
                if (typeof self.link_block !== 'undefined') {
                    self.link_block.addEvent('click', self.blockRequest);
                }
            },
            onFailure: function () {
                btn.set('text', Guest.failed_text);
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
            self.set('text', Guest.loading_text+'...');
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
            self.set('text', Guest.failed_text);
        }
    });
    myRequest.send();
};

Guest.removeRequest = function () {
    var do_it = confirm(Guest.confirm_text);
    if (do_it) {
        var self = this;
        var guest_id = self.getParent().getParent().id;
        var element = $$("li."+guest_id);
        var myRequest = new Request.HTML({
            url: 'guest/index/remove/guest_id/' + guest_id.substring(6) + '?format=html',
            method: 'get',
            onRequest: function () {
                self.set('text', Guest.loading_text+'...');
            },
            onSuccess: function () {
                element.destroy();
                document.getElementById(guest_id).destroy();
            },
            onFailure: function () {
                self.set('text', Guest.failed_text);
            }
        });
        myRequest.send();
    }
};

Guest.blockRequest = function () {
  var do_it = confirm(Guest.confirm_text);
    if (do_it) {
        var self = this;
        var guest_id = this.getParent().getParent().getParent().id;
        var myRequest = new Request.HTML({
            url: 'guest/index/block/guest_id/' + guest_id.substring(6) + '?format=html',
            method: 'get',
            onRequest: function () {
                self.set('text', Guest.loading_text+'...');
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
                self.set('text', Guest.failed_text);
            }
        });
        myRequest.send();
    }
};
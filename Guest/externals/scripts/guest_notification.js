var GuestStorage = {
    focus: true,
    visibility_change: function () {
        var _this = this;
        var hidden, visibilityState, visibilityChange;

        if (typeof document.hidden !== "undefined") {
            hidden = "hidden", visibilityChange = "visibilitychange", visibilityState = "visibilityState";
        } else if (typeof document.msHidden !== "undefined") {
            hidden = "msHidden", visibilityChange = "msvisibilitychange", visibilityState = "msVisibilityState";
        }

        var document_hidden = document[hidden];

        document.addEventListener(visibilityChange, function() {
            if(document_hidden != document[hidden]) {
                if(document[hidden]) {
                    _this.focus = false;
                } else {
                    _this.focus = true;
                }

                document_hidden = document[hidden];
            }
        });
    },
    show_guest: function (responseText, json) {
        var _this = this;
        var guest_el = document.getElementById('guest-notification');
        if (guest_el == null || typeof guest_el == 'undefined') {

            // desktop notification
            if (json) {
                var desk_not = new Request.JSON({
                    url: 'guest/index/guests',
                    onSuccess: function(guest) {
                        if (!Notification) {
                            alert('Desktop notifications not available in your browser. Try Chromium.');
                            return;
                        } else {
                            window.Notification.requestPermission();
                        }

                        if (Notification.permission !== "granted") {
                            console.log("don't have permission");
                            Notification.requestPermission(function (permission) {
                                if (permission == 'granted') {
                                    var notification = new Notification('New guest', {
                                        icon: guest.image,
                                        body: guest.name + "\n" + guest.time
                                    });

                                    notification.onclick = function () {
                                        window.open(guest.link);
                                    };
                                }
                            });
                        }
                        else {
                            if (!_this.focus) {
                                var notification = new Notification('New guest', {
                                    icon: guest.image,
                                    body: guest.name + "\n" + guest.time
                                });

                                notification.onclick = function () {
                                    window.open(guest.link);
                                };
                            }
                        }
                    },
                    onFailure: function () { console.log('JSON request is failed'); }
                });
                desk_not.send();
            }

            var temp = new Element('div#guest-notification', {'html': responseText});
            var body = document.getElementsByTagName('body')[0];
            temp.inject(body, 'bottom');

            var check = document.getElementsByClassName('guest-info')[0];
            if (check !== null && typeof check !== 'undefined') {
                var timerId = setTimeout(function () {
                    var guest_id = document.getElementsByClassName('guest-info')[0].id;
                    var add_req = new Request.HTML({
                        url: 'guest/index/add/guest_id/' + guest_id.substring(6) + '?format=html',
                        method: 'get',
                        onRequest: function () {},
                        onSuccess: function (var1, var2, responseText) {
                            var temp = new Element('li.'+guest_id, {'html': responseText});
                            var element = document.getElementsByClassName('layout_guest_profile_guests')[0];
                            if (element !== null && typeof element !== 'undefined') {
                                element = element.getElementsByClassName('generic_list_widget')[0];
                                temp.inject(element, 'top');
                            }
                        },
                        onFailure: function () {}
                    });
                    add_req.send();

                    var del_request = new Request.HTML({
                        url: 'guest/index/viewed/guest_id/' + guest_id.substring(6) + '?format=html',
                        method: 'get'
                    });
                    del_request.send();

                    var el = document.getElementById('guest-notification');
                    el.parentNode.removeChild(el);
                }, 5000);

                var close = document.getElementById('guest-close-btn');
                if (close !== null) {
                    close.addEventListener('click', function () {
                        var guest_id = document.getElementsByClassName('guest-info')[0].id;
                        var add_req = new Request.HTML({
                            url: 'guest/index/add/guest_id/' + guest_id.substring(6) + '?format=html',
                            method: 'get',
                            onRequest: function () {},
                            onSuccess: function (var1, var2, responseText) {
                                var temp = new Element('li.'+guest_id, {'html': responseText});
                                var element = document.getElementsByClassName('layout_guest_profile_guests')[0];
                                if (element !== null && typeof element !== 'undefined') {
                                    element = element.getElementsByClassName('generic_list_widget')[0];
                                    temp.inject(element, 'top');
                                }
                            },
                            onFailure: function () {}
                        });
                        add_req.send();

                        var re_request = new Request.HTML({
                            url: 'guest/index/viewed/guest_id/' + guest_id.substring(6) + '?format=html',
                            method: 'get'
                        });
                        re_request.send();

                        var el = document.getElementById('guest-notification');
                        el.parentNode.removeChild(el);
                    });
                }

                document.getElementById('guest-notification').addEventListener('mouseenter', function () {
                    clearTimeout(timerId);
                });
            }
        }
    }
};

window.onload = function () {
    // get the interval of notifications
    var interval = new Request({
        url: 'guest/index/interval',
        method: 'get',
        onSuccess: function (responseText) {
            var inter_val = responseText.toInt();

            // get settings of notifications
            var note_set = new Request({
                url: 'guest/index/notification',
                method: 'get',
                onSuccess: function (responseText) {
                    var type = responseText.toInt();

                    switch(type) {
                        case 1:
                            setInterval(function () {
                                var request = new Request.HTML({
                                    url: 'guest/index/guests?format=html',
                                    method: 'get',
                                    onRequest: function () {},
                                    onSuccess: function (var1, var2, responseText) {
                                        GuestStorage.show_guest(responseText, false);
                                    },
                                    onFailure: function () {}
                                });
                                request.send();
                            }, (1000 * inter_val));
                            break;
                        case 2:
                            setInterval(function () {
                                var request = new Request.HTML({
                                    url: 'guest/index/guests?format=html',
                                    method: 'get',
                                    onRequest: function () {},
                                    onSuccess: function (var1, var2, responseText) {
                                        GuestStorage.visibility_change();
                                        GuestStorage.show_guest(responseText, true);
                                    },
                                    onFailure: function () {}
                                });
                                request.send();
                            }, (1000 * inter_val));

                            break;
                    }
                }
            });
            note_set.send();
        }
    });
    interval.send();

};


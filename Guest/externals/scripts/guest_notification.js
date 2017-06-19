window.onload = function () {
    var interval = new Request({
        url: 'guest/index/interval',
        method: 'get',
        onSuccess: function (responseText) {
            var inter_val = responseText.toInt();
            setInterval(function () {
                var request = new Request.HTML({
                    url: 'guest/index/guests?format=html',
                    method: 'get',
                    onRequest: function () {},
                    onSuccess: function (var1, var2, responseText) {
                        var guest_el = document.getElementById('guest-notification');
                        if (guest_el == null || typeof guest_el == 'undefined') {
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
                    },
                    onFailure: function () {}
                });
                request.send();
            }, (1000 * inter_val));
        }
    });
    interval.send();
    /*setInterval(function () {
        var request = new Request.HTML({
            url: 'guest/index/guests?format=html',
            method: 'get',
            onRequest: function () {},
            onSuccess: function (var1, var2, responseText) {
                var guest_el = document.getElementById('guest-notification');
                if (guest_el == null || typeof guest_el == 'undefined') {
                    var temp = new Element('div#guest-notification', {'html': responseText});
                    var body = document.getElementsByTagName('body')[0];
                    temp.inject(body, 'bottom');

                    var timerId = setTimeout(function () {
                        var guest_id = document.getElementsByClassName('guest-info')[0].id;
                        var add_req = new Request.HTML({
                            url: 'guest/index/add/guest_id/' + guest_id.substring(6) + '?format=html',
                            method: 'get',
                            onRequest: function () {},
                            onSuccess: function (var1, var2, responseText) {
                                var temp = new Element('li.'+guest_id, {'html': responseText});
                                var element = document.getElementsByClassName('layout_guest_profile_guests')[0].getElementsByClassName('generic_list_widget')[0];
                                temp.inject(element, 'top');
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
                                    var element = document.getElementsByClassName('layout_guest_profile_guests')[0].getElementsByClassName('generic_list_widget')[0];
                                    temp.inject(element, 'top');
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
            },
            onFailure: function () {}
        });
        request.send();
    }, (1000 * 10));*/
};
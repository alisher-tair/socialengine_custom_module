<?php

class Guest_Bootstrap extends Engine_Application_Bootstrap_Abstract
{
    public function __construct($application)
    {
        parent::__construct($application);
        $this->initViewHelperPath();
        $view = Zend_Registry::get('Zend_View');
        $headScript = new Zend_View_Helper_Headscript();
        /*$content = <<<CONTENT
window.onload = function () {
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

                var new_element = document.getElementsByClassName('guest-info')[0];
                if (new_element !== null) {
                    new_element.style.display = 'block';
                }

                var timerId = setTimeout(function () {
                    var el = document.getElementById('guest-notification');
                    el.parentNode.removeChild(el);
                }, 5000);

                var confirm = document.getElementById('guest-confirm');
                if (confirm !== null) {
                    confirm.addEventListener('click', function () {
                        var _this = this;
                        var guest_id = document.getElementsByClassName('guest-info')[0].id;
                        var viewed_request = new Request.HTML({
                            url: 'guest/index/viewed/guest_id/' + guest_id.substring(6) + '?format=html',
                            method: 'get',
                            onRequest: function () {
                                _this.innerHTML = 'Loading...';
                            },
                            onSuccess: function () {
                                var parent = _this.parentNode.parentNode;
                                if (parent !== null) {
                                    parent.parentNode.removeChild(parent);
                                } else { console.log('error'); }
                            },
                            onFailure: function () {
                                _this.innerHTML = 'Failed';
                            }
                        });
                        viewed_request.send();
                    });
                }

                document.getElementById('guest-notification').addEventListener('mouseenter', function () {
                    console.log('mouseenter');
                    clearTimeout(timerId);
                });
            }
        },
        onFailure: function () {},
    });
    request.send();
    }, (1000 * 6));
};
CONTENT;*/

        $view->headScript()->appendFile(Zend_Controller_Front::getInstance()->getBaseUrl() . '/application/modules/Guest/externals/scripts/guest_notification.js');
        $view->headTranslate(array(
            'Loading...',
            'Failed'
        ));
    }

    protected function _initPlugins()
    {
        $front = Zend_Controller_Front::getInstance();
        $front->registerPlugin(new Guest_Plugin_Core());
    }
}
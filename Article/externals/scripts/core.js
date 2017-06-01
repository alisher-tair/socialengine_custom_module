
Article.is_request = false;
Article.requestHTML = function (url, callback, $container, data)
{
    if ($type(data) == 'object'){
        data = $merge({'format': 'html'}, data);
    } else if ($type(data) == 'string'){
        data += '&format=html';
    }

    Article.is_request = true;

    var request = new Request.HTML({
        'url': url,
        'method': 'get',
        'data': data,
        'evalScripts' : false,
        'onComplete': function (responseTree, responseElements, responseHTML, responseJavaScript){

            Article.is_request = false;

            if ($container && $type($container) == 'element'){
                $container.set('html', responseHTML);
            }
            if ($type(callback) == 'function'){
                callback(responseHTML);
            }
            eval(responseJavaScript);
            en4.core.runonce.trigger();
        }
    });
    request.send();
};


<?php
    echo $this->form->render($this);
?>

<script>
    var url = window.location.href;
    url = url.split('?')[0];
    url = url.split('/');
    var lastSegment = url.pop() || url.pop();


    switch (lastSegment) {
        case 'browse-articles': document.getElementById('browse-articles').addClass('active'); break;
        case 'my-articles': document.getElementById('my-articles').addClass('active'); break;
        case 'create-article': document.getElementById('create-article').addClass('active'); break;
    }
</script>

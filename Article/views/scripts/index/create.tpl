<?php
    echo $this->form->render($this);
?>

<script>
    var url = window.location.href;
    url = url.split('/');
    var lastSegment = url.pop() || url.pop();


    switch (lastSegment) {
        case 'browse-articles': $$('.custom_272').getParent().addClass('active'); break;
        case 'my-articles': $$('.custom_271').getParent().addClass('active'); break;
        case 'create-article': $$('.custom_270').getParent().addClass('active'); break;
    }
</script>

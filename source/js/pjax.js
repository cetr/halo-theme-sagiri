$(document).pjax('a[target!=_blank]', '#main', {fragment: '#main',timeout: 8000});
// pjax开始
$(document).on('pjax:send', function() {
    $(".loading").css("display", "block");
});

// pjax结束
$(document).on('pjax:complete', function() {
    $(".loading").css("display", "none");
    $('script[data-pjax]').each(function () {
        $(this).parent().append($(this).remove());
    });
    document.querySelectorAll('pre code').forEach((block) => {
        hljs.highlightBlock(block);
    });
    if ($(window).width() < 991){
        $('.container').velocity('scroll', {
            offset: $('#header').height()
        });
    }else {
        $('.container').velocity('scroll', {
            offset: $('#header').height() - 60
        });
    }
});

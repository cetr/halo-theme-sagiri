$(document).pjax('a[target!=_blank]', '#main', {fragment: '#main',timeout: 8000});
// pjax开始
$(document).on('pjax:send', function() {
    $(".loading").css("display", "block");
    if ($('#toc').length) tocbot.destroy();
});

// pjax结束
$(document).on('pjax:complete', function() {
    $(".loading").css("display", "none");
    $('script[data-pjax]').each(function () {
        $(this).parent().append($(this).remove());
    });
    sagiri.scrollAfterPjax(300);
});

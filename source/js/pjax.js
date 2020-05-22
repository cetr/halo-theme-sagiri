NProgress.configure({
    showSpinner: true,
    easing: 'ease-out',
    speed: 1000
});

$(document).pjax('a[target!=_blank]', '#main', {
    scrollTo: $('.main').position().top - 60,
    fragment: '#main',
    timeout: 5000
});
// pjax开始
$(document).on('pjax:send', function() {
    // $(".loading").css("display", "block");
    NProgress.start();
    if ($('#toc').length) tocbot.destroy();
    $('html, body').animate({
        scrollTop: $('.main').position().top - 60
    }, 500);
});

// pjax结束
$(document).on('pjax:complete', function() {
    // $(".loading").css("display", "none");
    NProgress.done();
    $('script[data-pjax]').each(function () {
        $(this).parent().append($(this).remove());
    });
});

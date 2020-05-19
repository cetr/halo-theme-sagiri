$(function () {
    sagiri.affix();
    sagiri.scrolldown();
    sagiri.operation_aplayer_lrc();
    $(window).scroll(function () {
        sagiri.operation_aplayer_lrc();
    });
    $('pre').addClass("line-numbers");
    sagiri.lazyload('img.lazy');
});

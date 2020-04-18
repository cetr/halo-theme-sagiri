$(document).pjax('a[target!=_blank]', '#main', {fragment: '#main',timeout: 8000});
$(document).on('pjax:send', function() {
    $(".loading").css("display", "block");
});

$(document).on('pjax:complete', function() {
    $(".loading").css("display", "none");
    //pjax加载结束的回调函数 解决js无法定位的问题
    //重新定位容器内容的函数写在这里
});

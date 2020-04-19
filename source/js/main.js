var sagiri =  {
    // 目录
    postToc: function () {
        var headerEl = 'h1,h2,h3,h4,h5,h6';
        tocbot.init({
            tocSelector: '#toc',
            contentSelector: '.post-body',
            headingSelector: headerEl,
            scrollSmooth: true,
            scrollSmoothOffset: -5,
            headingsOffset: -700,
            fixedSidebarOffset: 'auto',
            hasInnerContainers: false
        });
    },
    // 点击
    scrolldown: function(){
        //滚动到第二屏
        $('.scrolldown_b').on('click', function() {
            $('.container').velocity('scroll', {
                offset: $('#header').height() - 60
            });
        });
        $('.scrolldown_s').on('click', function() {
            $('.container').velocity('scroll', {
                offset: $('#header').height()
            });
        });
    },

    // 悬浮
    affix: function(){
        $('.sidebar-inner').affix({
            offset: {
                top: 700,
                bottom: 465
            }
        })
    },

    // 歌词
    operation_aplayer_lrc: function(){
        var scrollTop = $(window).scrollTop();
        var scrollHeight = $(document).height();
        var windowHeight = $(window).height();
        if (scrollTop + windowHeight >= scrollHeight - 20) {
            $('.aplayer-fixed .aplayer-lrc').hide();
        } else {
            $('.aplayer-fixed .aplayer-lrc').show();
        }
    }
}

$(function() {
    sagiri.scrolldown();

    hljs.initHighlightingOnLoad();
    sagiri.operation_aplayer_lrc();
    $(window).scroll(function () {
        sagiri.operation_aplayer_lrc();
    });
})

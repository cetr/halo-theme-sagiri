const sagiri = {
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
    scrolldown: function () {
        //滚动到第二屏
        $('.scrolldown_b').on('click', function () {
            $('.container').velocity('scroll', {
                offset: $('#header').height() - 60
            });
        });
        $('.scrolldown_s').on('click', function () {
            $('.container').velocity('scroll', {
                offset: $('#header').height()
            });
        });
    },

    // 悬浮
    affix: function () {
        $('.sidebar-inner').affix({
            offset: {
                top: 700,
                bottom: 465
            }
        })
    },

    // 站点运行时间
    blogRanTime: function (now, start) {
        var n = new Date(start);
        now.setTime(now.getTime() + 250), days = (now - n) / 1e3 / 60 / 60 / 24, dnum = Math.floor(days), hours = (now - n) /
            1e3 / 60 / 60 - 24 * dnum, hnum = Math.floor(hours), 1 == String(hnum).length && (hnum = "0" + hnum), minutes =
            (now - n) / 1e3 / 60 - 1440 * dnum - 60 * hnum, mnum = Math.floor(minutes), 1 == String(mnum).length && (mnum =
            "0" + mnum), seconds = (now - n) / 1e3 - 86400 * dnum - 3600 * hnum - 60 * mnum, snum = Math.round(seconds),
        1 == String(snum).length && (snum = "0" + snum), document.getElementById("timeDate").innerHTML = "站点已萌萌哒运行 " +
            dnum + " 天 ", document.getElementById("times").innerHTML = hnum + " 小时 " + mnum + " 分 " + snum + " 秒"
    },

    // 歌词
    operation_aplayer_lrc: function () {
        var scrollTop = $(window).scrollTop();
        var scrollHeight = $(document).height();
        var windowHeight = $(window).height();
        if (scrollTop + windowHeight >= scrollHeight - 20) {
            $('.aplayer-fixed .aplayer-lrc').hide();
        } else {
            $('.aplayer-fixed .aplayer-lrc').show();
        }
    },

    // 图片懒加载
    lazyload: function (className) {
        $(className).lazyload({
            effect: "fadeIn",
            placeholder: "https://i.loli.net/2020/04/24/4YqE3JN2zmGHujC.gif"
        });
    },

    fancybox: function () {
        $(".fancybox").fancybox();
    }
}

$(function () {
    sagiri.scrolldown();
    hljs.initHighlightingOnLoad();
    sagiri.operation_aplayer_lrc();
    sagiri.lazyload('img.lazy');
    sagiri.fancybox();
    $(window).scroll(function () {
        sagiri.operation_aplayer_lrc();
    });
})

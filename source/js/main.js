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
    affix: function (topMax, bottomMax) {
        $('.sidebar-inner').affix({
            offset: {
                top: topMax,
                bottom: bottomMax
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
        if ($('.aplayer-lrc').hasClass('aplayer-lrc-hide')) {
            return;
        }
        if (scrollTop + windowHeight >= scrollHeight - 20) {
            $('.aplayer-fixed .aplayer-lrc').hide();
        } else {
            $('.aplayer-fixed .aplayer-lrc').show();
        }
    },
    // 包装图片 fancybox 图库页面
    wrapImageWithFancyBox: function () {
        $('.user-picbox img')
            .not('[hidden]')
            .not('.no-fancybox')
            .not('.group-picture img, .post-gallery img')
            .not('#QR img')
            .not('.post-share img')
            .each(function () {
                var $image = $(this);
                var imageTitle = $image.attr('title');
                var $imageWrapLink = $image.parent('a');
                if ($imageWrapLink.length < 1) {
                    var imageLink = ($image.attr('data-original')) ? this.getAttribute('data-original') : this.getAttribute('src');
                    $imageWrapLink = $image.wrap('<a href="' + imageLink + '"></a>').parent('a');
                }

                $imageWrapLink.addClass('fancybox fancybox.image');
                $imageWrapLink.attr('rel', 'group');

                if (imageTitle) {
                    $imageWrapLink.append('<p class="image-caption">' + imageTitle + '</p>');

                    //make sure img title tag will show correctly in fancybox
                    $imageWrapLink.attr('title', imageTitle);
                }
            });

        $('.fancybox').fancybox({
            helpers: {
                overlay: {
                    locked: false
                }
            }
        });
    },
    // 图片放大
    addPostImgZoomify: function () {
        $('.content img')
            .not('[hidden]')
            .not('.no-fancybox')
            .not('.group-picture img, .post-gallery img')
            .not('#QR img')
            .not('.user-gallery')
            .not('.post-share img')
            .each(function () {
                $(this).zoomify()
            })
    },
    // 对文章里的图片设置懒加载
    lazyLoadPostsImages: function () {
        $('#posts').find('img').lazyload({
            placeholder: 'https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/image/JyLKoQ.gif',
            effect: 'fadeIn',
            threshold: 0
        });
    },
    // 夜间模式
    nightMode: function () {
        var nightModeBtn = $("#nightModeBtn i");
        $("#nightModeBtn").click(function (e) {
            if (nightModeBtn.hasClass("fa-moon-o")) {
                nightModeBtn.addClass("fa-lightbulb-o");
                nightModeBtn.removeClass("fa-moon-o");
                $("body").removeClass("nightMode");
            } else if (nightModeBtn.hasClass("fa-lightbulb-o")) {
                nightModeBtn.addClass("fa-moon-o");
                nightModeBtn.removeClass("fa-lightbulb-o");
                $("body").addClass("nightMode");
            }
        })
    },
    // pjax 之后的动画
    scrollAfterPjax: function (timeout) {
        setTimeout(() => {
            if ($(window).width() < 991) {
                $('.container').velocity('scroll', {
                    offset: $('#header').height()
                });
            } else {
                $('.container').velocity('scroll', {
                    offset: $('#header').height() - 60
                });
            }
        }, timeout);
    },
    // 分享文章
    postShare: function () {
        if ($('.post-share').length) {
            $('.post-share').share({
                disabled: ['tencent', 'douban', 'linkedin', 'diandian', 'facebook', 'google'],
                wechatQrcodeTitle: "微信扫一扫",
                wechatQrcodeHelper: '<p>微信扫一扫，右上角分享</p>'
            })
        }
    }
}

$(function () {
    sagiri.scrolldown();
    // sagiri.nightMode();
    sagiri.operation_aplayer_lrc();
    $(window).scroll(function () {
        sagiri.operation_aplayer_lrc();
    });
})

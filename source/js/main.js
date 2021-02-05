'use strict';

const sagiri = {
    postToc: function () {
        /**
         * 初始化目录
         */
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
    scrolldown: function () {
        /**
         * 点击滚动效果
         */
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
    affix: function (obj) {
        /**
         * affix定位
         */
        $(obj).each(function (i, n) {
            $(n).affix({
                offset: {
                    top: $(n).data('affixval')
                }
            });
        });
    },
    back_to_top: function () {
        $.scrollto = function (scrolldom, scrolltime) {
            $(scrolldom).click(function () {
                $(this).addClass("active").siblings().removeClass("active");
                $('html, body').animate({
                    scrollTop: $('body').offset().top
                }, scrolltime);
                return false;
            });
        };
        var backTo = $(".back-to-top");
        var backHeight = $(window).height() - 980 + 'px';
        $(window).scroll(function () {
            if ($(window).scrollTop() > 700 && backTo.css('top') === '-900px') {
                backTo.css('top', backHeight);
            } else if ($(window).scrollTop() <= 700 && backTo.css('top') !== '-900px') {
                backTo.css('top', '-900px');
            }
        });
        $.scrollto(".back-to-top", 800);
    },
    blogRanTime: function (now, start) {
        /**
         * 站点运行时间
         */
        var n = new Date(start);
        var days = 0, dnum = 0, hours = 0, hnum = 0, minutes = 0, mnum = 0, seconds = 0, snum = 0;
        now.setTime(now.getTime() + 250), days = (now - n) / 1e3 / 60 / 60 / 24, dnum = Math.floor(days), hours = (now - n) /
            1e3 / 60 / 60 - 24 * dnum, hnum = Math.floor(hours), 1 == String(hnum).length && (hnum = "0" + hnum), minutes =
            (now - n) / 1e3 / 60 - 1440 * dnum - 60 * hnum, mnum = Math.floor(minutes), 1 == String(mnum).length && (mnum =
            "0" + mnum), seconds = (now - n) / 1e3 - 86400 * dnum - 3600 * hnum - 60 * mnum, snum = Math.round(seconds),
        1 == String(snum).length && (snum = "0" + snum), document.getElementById("timeDate").innerHTML = "站点已萌萌哒运行 " +
            dnum + " 天 ", document.getElementById("times").innerHTML = hnum + " 小时 " + mnum + " 分 " + snum + " 秒"
    },
    operation_aplayer_lrc: function () {
        /**
         * 优化页脚歌词与页脚文章重叠
         */
        var scrollTop = $(window).scrollTop();
        var scrollHeight = $(document).height();
        var windowHeight = $(window).height();
        if ($('.aplayer-fixed .aplayer-lrc').hasClass('aplayer-lrc-hide')) {
            return;
        }
        if (scrollTop + windowHeight >= scrollHeight - 20) {
            $('.aplayer-fixed .aplayer-lrc').hide();
        } else {
            $('.aplayer-fixed .aplayer-lrc').show();
        }
    },
    wrapImageWithFancyBox: function () {
        /**
         * 包装图片 fancybox 图库页面
         */
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
    addPostImgZoomify: function () {
        /**
         * 图片放大
         */
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
    lazyLoadPostsImages: function (placeholder) {
        /**
         * 对文章里的图片设置懒加载
         */
        $('#posts').find('img').lazyload({
            placeholder: placeholder,
            effect: 'fadeIn',
            threshold: 0
        });
    },
    nightMode: function () {
        /**
         * 夜间模式
         */
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
    scrollAfterPjax: function (timeout) {
        /**
         * pjax 之后的动画
         */
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
    postShare: function () {
        /**
         * 分享文章
         */
        if ($('.post-share').length) {
            $('.post-share').share({
                disabled: ['tencent', 'douban', 'linkedin', 'diandian', 'facebook', 'google'],
                wechatQrcodeTitle: "微信扫一扫",
                wechatQrcodeHelper: '<p>微信扫一扫，右上角分享</p>'
            })
        }
    },
    verifySearchForm: function () {
        /**
         * 验证搜索表单
         */
        var submit = document.querySelector(".search-form .search-submit");
        var keyword = document.querySelector(".search-form input[name=keyword]");
        $(submit).click(function () {
            if ($(keyword).val() == "") return false;
        });
    }
}

$(function () {
    sagiri.scrolldown();
    sagiri.back_to_top();
    sagiri.operation_aplayer_lrc();
    sagiri.verifySearchForm();
    $(window).scroll(function () {
        sagiri.operation_aplayer_lrc();
    });
})

<canvas id="evanyou"></canvas>
<div class="loading" style="display: none;"> <div class="loader"></div></div>
<#if settings.music_enabled!false>

    <meting-js
            id="${settings.list_id!'3778678'}"
            server="${settings.music_source!'netease'}"
            type="playlist"
            order="${settings.sort_by!}"
            fixed="true"
            autoplay="${settings.auto_play?string('true', 'false')}"
            list-folded="true"
    >
    </meting-js>

</#if>
<#if settings.hitokoto!false>
<script src="https://v1.hitokoto.cn/?c=${settings.hitokoto_type!}&encode=js&select=%23hitokoto" defer></script>
</#if>
<script type="text/javascript" src="https://cdn.jsdelivr.net/velocity/1.1.0/velocity.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.5.0/tocbot.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"> </script>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/evanyou.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/animate.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/backtotop.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/pjax.js"></script>
<script data-pjax="" type="text/javascript" src="${theme_base!}/source/js/pjax-main.js"></script>
</body>
</html>

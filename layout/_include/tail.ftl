<#if settings.evanyou!true>
<canvas id="evanyou"></canvas>
<script type="text/javascript" src="${theme_base!}/source/js/evanyou.js"></script>
</#if>
<div class="loading" style="display: none;"> <div class="loader"></div></div>
<#if settings.music_enabled!false>
<meting-js
        async="true"
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
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/velocity/1.1.0/velocity.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/tocbot/4.5.0/tocbot.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"> </script>
<script type="text/javascript" src="//cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/animate.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/backtotop.js"></script>
<script data-pjax src="${theme_base!}/source/js/normal.js"></script>
<#if settings.pjax_enabled!false>
<script type="text/javascript" src="${theme_base!}/source/js/pjax.js"></script>
<#elseif is_index!false>
<#else >
<script>sagiri.scrollAfterPjax(300)</script>
</#if>
<script data-pjax src="//cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/js/prism.js"></script>
</body>
</html>

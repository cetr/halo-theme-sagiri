<#if settings.evanyou!true>
<canvas id="evanyou"></canvas>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/js/evanyou.min.js"></script>
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
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/velocity-animate@1.2.3/velocity.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/tocbot@4.4.2/dist/tocbot.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/greensock@1.20.2/dist/TweenMax.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-lazyload@1.9.3/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script src="${options.comment_internal_plugin_js!'https://cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/js/animate.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/js/backtotop.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/js/jquery.share.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/zoomify@0.2.5/dist/zoomify.min.js"></script>

<script data-pjax src="${theme_base!}/source/js/normal.js"></script>
<script data-pjax src="https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/js/prism.js"></script>
<#if settings.pjax_enabled!false>
<script type="text/javascript" src="${theme_base!}/source/js/pjax.js"></script>
</#if>
${settings.sagiri_plugin_js!}
</body>
</html>

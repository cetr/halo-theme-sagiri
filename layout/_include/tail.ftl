<#if settings.evanyou!true>
    <canvas id="evanyou"></canvas>
    <script src="https://cdn.jsdelivr.net/gh/cetr/halo-theme-sagiri@sagiri-cdn/js/evanyou.min.js?v=${theme.version!}"
            type="text/javascript"></script>
</#if>
<div class="loading" style="display: none;">
    <div class="loader"></div>
</div>
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
    ></meting-js>
</#if>
<#if settings.hitokoto!false>
    <script src="https://v1.hitokoto.cn/?c=${settings.hitokoto_type!}&encode=js&select=%23hitokoto" defer></script>
</#if>
<#if settings.pjax_enabled!false>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-pjax@2.0.1/jquery.pjax.min.js?v=${theme.version!}"></script>
</#if>
<#if settings.music_enabled!false>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.css?v=${theme.version!}">
    <script src="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.js?v=${theme.version!}"></script>
    <script src="https://cdn.jsdelivr.net/npm/meting@2/dist/Meting.min.js?v=${theme.version!}"></script>
</#if>

<#include "cdn_js.ftl">

<script src="${options.comment_internal_plugin_js!'https://cdn.jsdelivr.net/gh/cetr/halo-comment-yu@latest/dist/halo-comment.min.js'}"></script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js"></script>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/gh/cetr/halo-theme-sagiri@sagiri-cdn/js/animate.js"></script>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/gh/cetr/halo-theme-sagiri@sagiri-cdn/js/backtotop.js"></script>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/js/jquery.share.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/zoomify@0.2.5/dist/zoomify.min.js"></script>

<script data-pjax src="${theme_base!}/source/js/normal.js"></script>
<script data-pjax src="https://cdn.jsdelivr.net/gh/cetr/cdn@master/prism.js"></script>
<#if settings.pjax_enabled!false>
    <script type="text/javascript" src="${theme_base!}/source/js/pjax.js"></script>
</#if>
</body>
</html>

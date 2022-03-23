<script src="${theme_base!}/source/lib/bootstrap/bootstrap.min.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/nprogress/nprogress.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/velocity/velocity.min.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/tocbot/tocbot.min.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/greensock/TweenMax.min.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/jquery-lazyload/jquery.lazyload.min.js?v=${theme.version!}"
        type="text/javascript"></script>
<script src="${theme_base!}/source/lib/social-share/js/jquery.share.min.js?v=${theme.version!}"
        type="text/javascript"></script>
<script src="${theme_base!}/source/lib/zoomify/zoomify.min.js?v=${theme.version!}" type="text/javascript"></script>
<script data-pjax src="${theme_base!}/source/lib/prism/prism.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/lib/fancybox/jquery.fancybox.min.js?v=${theme.version!}"
        type="text/javascript"></script>
<script src="${theme_base!}/source/js/main.js?v=${theme.version!}" type="text/javascript"></script>
<script src="${theme_base!}/source/js/animate.js?v=${theme.version!}" type="text/javascript"></script>
<#if settings.comment_internal_plugin_js_enable!false>
    <script src="${options.comment_internal_plugin_js!'https://unpkg.com/halo-comment-yu@latest/dist/halo-comment.min.js'}?v=${theme.version!}"
            type="text/javascript"></script>
<#else>
    <script src="https://unpkg.com/halo-comment-yu@latest/dist/halo-comment.min.js?v=${theme.version!}"
            type="text/javascript"></script>
</#if>
<#if settings.pjax_enabled!false>
    <script src="${theme_base!}/source/lib/jquery-pjax/jquery.pjax.js?v=${theme.version!}"
            type="text/javascript"></script>
    <script src="${theme_base!}/source/js/pjax.js?v=${theme.version!}" type="text/javascript"></script>
</#if>
<#if settings.music_enabled!false>
    <script src="${theme_base!}/source/lib/aplayer/APlayer.min.js?v=${theme.version!}" type="text/javascript"></script>
    <script src="${theme_base!}/source/lib/meting/Meting.min.js?v=${theme.version!}" type="text/javascript"></script>
</#if>
<#if settings.evanyou!true>
    <script src="${theme_base!}/source/lib/evanyou/evanyou.min.js?v=${theme.version!}" type="text/javascript"></script>
</#if>

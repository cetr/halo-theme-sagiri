<canvas id="evanyou"></canvas>
<#if settings.music_enabled!false>
<div class="motion-element">
<meting-js
        id="${settings.list_id!'3778678'}"
        server="${settings.music_source!'netease'}"
        type="playlist"
        lrc-type="0"
        order="${settings.sort_by!}"
        fixed="true"
        autoplay="${settings.auto_play?string('true', 'false')}"
        list-folded="true"
>
</meting-js>
</div>
</#if>
<#if settings.hitokoto!false>
    <script src="https://v1.hitokoto.cn/?c=${settings.hitokoto_type!}&encode=js&select=%23hitokoto" defer></script>
</#if>
<script type="text/javascript" src="${theme_base!}/source/js/evanyou.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/TweenLite.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/TweenMax.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/animate.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/backtotop.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.5.0/tocbot.min.js"></script>
</body>
</html>

<div class="loading" style="display: none;">
    <div class="loader"></div>
</div>
<#if settings.evanyou!true>
    <canvas id="evanyou"></canvas>
</#if>
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

<#include "js.ftl">

<#include "pjax_js.ftl">
</body>
</html>

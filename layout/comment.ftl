<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <div class="inner" id="commentInner">
            <div id="haloComment"></div>
        </div>
        <script type="text/javascript" data-pjax>
            function renderComment() {
                var haloComment = document.getElementById('haloComment');
                if (!haloComment) {
                    $('#' + '${post.id?c}').remove();
                    $('#commentInner').append('<div id="haloComment"></div>');
                }
                new Vue({
                    el: '#haloComment',
                    template: `<halo-comment id="${post.id?c}" type="${type}" />`,
                });
            }

            renderComment();
        </script>
    </#if>
</#macro>

<#macro comment post,type>
    <div id="haloComment"></div>
    <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script>
        if (!$('#haloComment')) {
            $('#' + '${post.id?c}').remove();
            $('#comments').append('<div id="haloComment"></div>');
        }
        new Vue({
            el: '#haloComment',
            template: `<halo-comment id="${post.id?c}" type="${type}" />`
        });
    </script>
</#macro>


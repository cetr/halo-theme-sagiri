<aside id="sidebar" class="sidebar">
    <div class="sidebar-inner">
        <#include "about_me.ftl">
    </div>
    <script type="text/javascript">
        $('.sidebar-inner').affix({
            offset: {
                top: 700,//滚动中距离页面顶端的位置
                bottom: 310
            }
        })
    </script>
</aside>

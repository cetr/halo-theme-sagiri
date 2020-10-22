<aside id="sidebar" class="sidebar">
    <div class="sidebar-inner">
        <div class="sidebar-inner-top ">
            <ul class="sidebar-nav motion-element">
                <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap">文章目录</li>
                <li class="sidebar-nav-overview" data-target="site-overview-wrap">站点概览</li>
            </ul>
            <#include "about_me.ftl">
            <#include "post_directory.ftl">
        </div>
        <#include "plugin.ftl">
    </div>
    <script>
        $(function() {
            sagiri.postToc();
            sagiri.postShare();
            $('#about-me').css('display','none').css('opacity', '1');
            $('.sidebar-nav-toc').click(function () {
                $(this).addClass('sidebar-nav-active');
                $('.sidebar-nav-overview').removeClass('sidebar-nav-active');
                $('#about-me').attr('class', 'site-overview-wrap sidebar-panel').css('display','none').css('opacity', '0');
                $('#post-directory').attr('class', 'post-toc-wrap motion-element sidebar-panel sidebar-panel-active').css('display','block').css('opacity', '1');
            });
            $('.sidebar-nav-overview').click(function () {
                $(this).addClass('sidebar-nav-active');
                $('.sidebar-nav-toc').removeClass('sidebar-nav-active');
                $('#about-me').attr('class', 'site-overview-wrap sidebar-panel sidebar-panel-active').css('display','block').css('opacity', '1');
                $('#post-directory').attr('class', 'post-toc-wrap motion-element sidebar-panel').css('display','none').css('opacity', '0');
            })
        });
    </script>
</aside>

<footer id="footer" class="footer">
    <div class="footer-inner">
        <@global.footer />
        <#if settings.blog_ran_time??>
            <p><span id="timeDate"></span><span id="times"></span></p>
            <script>
                $(function () {
                    setInterval("sagiri.blogRanTime(new Date, '${settings.blog_ran_time!}')", 250);
                })
            </script>
        </#if>
        <p>Copyright &copy; ${.now?string('yyyy')}
            <a href="${blog_url!}"> ${user.nickname!}</a>
            <#if settings.icp??>
                <a href="https://beian.miit.gov.cn" target="_blank">${settings.icp!}</a><br>
            </#if>
        </p>
        <#-- 以下为版权信息，请尽量不要修改或删除，谢谢！-->
        <p>
            由 <a href="https://halo.run" target="_blank" class="external" rel="nofollow">Halo</a> 强力驱动 ·
            Theme by <a href="https://blog.coor.top" target="_blank" class="external" rel="nofollow">知雨</a> ·
            <a href="${sitemap_html_url!}" target="_blank" class="external" rel="nofollow">站点地图</a>
        </p>
    </div>
</footer>

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
            <a href="${blog_url!}"> ${user.nickname!}</a> ·
            <#if settings.icp??><a href="http://beian.miit.gov.cn" target="_blank">${settings.icp!}</a><br>
            </#if>
        </p>
        <!-- 以下信息，请不要修改或删除，谢谢！ -->
        <p>Proudly published with <a href="https://halo.run/" target="_blank" class="external" rel="nofollow">Halo</a> ·
            Theme by <a href="https://www.tsxygfy.cn/" target="_blank" class="external" rel="nofollow">fyang</a> ·
            <a href="${sitemap_html_url!}" target="_blank" class="external" rel="nofollow">站点地图</a>
        </p>
    </div>
</footer>

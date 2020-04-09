<section class="site-overview-wrap sidebar-panel sidebar-panel-active">
    <div class="site-overview">
        <div class="site-author motion-element" itemprop="author" itemscope
             itemtype="http://schema.org/Person">

            <img class="site-author-image" itemprop="image"
                 src="${theme_base}/source/images/card.jpg"
                 alt="${user.nickname!}"/>

            <p class="site-author-name" itemprop="name"><span
                        style="opacity:.2;">${settings.nickname_prefix!}</span>${user.nickname!}
            </p>
            <p class="site-description motion-element" itemprop="description">${user.description!}</p>
        </div>

        <div class="links-of-author motion-element">
            <#if settings.github??>
                <span class="links-of-author-item scaleup">
                    <a href="https://github.com/${settings.github!}" target="_blank">
                        <i class="fa fa-fw fa-github" style="color:#191717;"></i>
                    </a>
                </span>
            </#if>

            <#if settings.twitter??>
                <span class="links-of-author-item scaleup">
                        <a href="https://twitter.com/${settings.twitter!}" target="_blank">
                            <i class="fa fa-fw fa-twitter" style="color: #2fb0ec;"></i>
                        </a>
                    </span>
            </#if>

            <#if settings.qq??>
                <span class="links-of-author-item scaleup">
                        <a href="${theme_base}/source/images/qq-g.jpg" target="_blank"
                           data-balloon-pos="up">
                            <i class="fa fa-fw fa-qq"></i>
                        </a>
                    </span>
            </#if>

            <#if user.email??>
                <span class="links-of-author-item scaleup">
                        <a href="mailto:${user.email}" target="_blank">
                            <i class="fa fa-fw fa-envelope"></i>
                        </a>
                    </span>
            </#if>
            <#if settings.telegram??>
            <span class="links-of-author-item scaleup">
                        <a href="https://t.me/${settings.telegram!}" target="_blank">
                            <i class="fa fa-fw fa-telegram" style="color: #41aade"></i>
                        </a>
                    </span>
            </#if>
            <#if settings.rss!true>
                    <span class="links-of-author-item scaleup">
                        <a href="${rss_url!}" target="_blank">
                            <i class="fa fa-fw fa-rss"></i>
                        </a>
                    </span>
            </#if>


        </div>


        <nav class="site-state motion-element">
            <div class="site-state-item site-state-posts">
                <a href="/archives/%20%7C%7C%20archive">
                    <span class="site-state-item-count">1</span>
                    <span class="site-state-item-name">posts</span>
                </a>
            </div>
        </nav>

        <div class="cc-license motion-element" itemprop="license">
            <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" class="cc-opacity"
               target="_blank">
                <img src="${theme_base}/source/images/cc-by-nc-sa.png" alt="Creative Commons"/>
            </a>
        </div>
    </div>
</section>

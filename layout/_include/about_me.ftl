<section class="site-overview-wrap sidebar-panel sidebar-panel-active" id="about-me">
    <div class="site-overview">
        <div class="site-author motion-element" itemprop="author" itemscope
             itemtype="http://schema.org/Person">

            <img class="site-author-image" itemprop="image"
                 src="${settings.sitebar_img!theme_base+'/source/images/card.jpg'}"
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
    </div>
</section>

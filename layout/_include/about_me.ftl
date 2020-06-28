<section class="site-overview-wrap sidebar-panel sidebar-panel-active" id="about-me">
    <div class="site-overview" style="max-height: 773px;">
        <div class="site-author motion-element" itemprop="author" itemscope
             itemtype="http://schema.org/Person">

            <img class="site-author-image" itemprop="image"
                 src="${settings.sitebar_img!'https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/image/card.jpg'}"
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
                        <i class="fa fab fa-github" style="color:#191717;"><span>Github</span></i>
                    </a>
                </span>
            </#if>
            <#if settings.twitter??>
                <span class="links-of-author-item scaleup">
                        <a href="https://twitter.com/${settings.twitter!}" target="_blank">
                            <i class="fa fab fa-twitter" style="color: #2fb0ec;"><span>Twitter</span></i>
                        </a>
                </span>
            </#if>
            <#if settings.qq??>
                <span class="links-of-author-item scaleup">
                        <a href="http://wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" target="_blank"
                           data-balloon-pos="up">
                            <i class="fa fab fa-qq" style="color: #41aade"><span>QQ</span></i>
                        </a>
                </span>
            </#if>
            <#if user.email??>
                <span class="links-of-author-item scaleup">
                        <a href="mailto:${user.email}" target="_blank">
                            <i class="fa fab fa-envelope" style="color: #54bcff;"><span>Email</span></i>
                        </a>
                </span>
            </#if>
            <#if settings.telegram??>
                <span class="links-of-author-item scaleup">
                        <a href="https://t.me/${settings.telegram!}" target="_blank">
                            <i class="fa fab fa-telegram" style="color: #41aade"><span>Telegram</span></i>
                        </a>
                </span>
            </#if>
            <#if settings.rss!true>
                <span class="links-of-author-item scaleup">
                        <a href="${rss_url!}" target="_blank">
                            <i class="fa fab fa-rss" style="color: #ff8956;"><span>RSS</span></i>
                        </a>
                </span>
            </#if>
        </div>

        <details class="views-top-wrap">
            <summary class="views-top-name scaleup">看爆 Top5</summary>
            <ul class="views-top">
                <@postTag method="count">
                    <@postTag method="latest" top="${count}">
                        <#assign postCunt = 0 />
                        <#list posts?sort_by("visits")?reverse as post>
                            <li>
                                <a href="${post.fullPath}">
                                    <span class="views-top-title">${post.title}</span>
                                    <span class="views-top-time">${post.visits}次看爆</span>
                                </a>
                            </li>
                            <#assign postCunt++ />
                            <#if postCunt == 5>
                                <#break>
                            </#if>
                        </#list>
                    </@postTag>
                </@postTag>
            </ul>
        </details>
    </div>
</section>

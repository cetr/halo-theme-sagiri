<section class="site-overview-wrap sidebar-panel sidebar-panel-active" id="about-me">
    <div class="site-overview" style="max-height: 773px;">
        <div class="site-author motion-element" itemprop="author" itemscope
             itemtype="http://schema.org/Person">

            <img src="${settings.sitebar_img!'${theme_base!}/source/images/card.jpg'}" class="site-author-image"
                 itemprop="image" alt="${user.nickname!}"/>

            <#if settings.sidebar_nickname_isopen!false>
                <p class="site-author-name" itemprop="name">
                    <span style="opacity:.2;">${settings.sidebar_nickname_prefix!}</span>
                    ${settings.sidebar_nickname!'${user.nickname}'}
                </p>
            </#if>
            <p class="site-description motion-element" itemprop="description">
                ${settings.sidebar_description!'你能抓到我么？'}
            </p>
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
            <#if settings.email??>
                <span class="links-of-author-item scaleup">
                        <a href="mailto:${settings.email}" target="_blank">
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

        <#if settings.sidebar_key1?? && settings.sidebar_value1??>
            <div class="des-of-author">
                <div class="des-of-author-nav">
                    <div class="des-of-author-title active" data-index="1">
                        ${settings.sidebar_key1!}
                    </div>
                    <#if settings.sidebar_key2?? && settings.sidebar_value2??>
                        <div class="des-of-author-title" data-index="2">
                            ${settings.sidebar_key2!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key3?? && settings.sidebar_value3??>
                        <div class="des-of-author-title" data-index="3">
                            ${settings.sidebar_key3!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key4?? && settings.sidebar_value4??>
                        <div class="des-of-author-title" data-index="4">
                            ${settings.sidebar_key4!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key5?? && settings.sidebar_value5??>
                        <div class="des-of-author-title" data-index="5">
                            ${settings.sidebar_key5!}
                        </div>
                    </#if>
                </div>
                <div class="des-of-author-panel">
                    <div class="des-of-author-des active" data-index="1">
                        ${settings.sidebar_value1!}
                    </div>
                    <#if settings.sidebar_key2?? && settings.sidebar_value2??>
                        <div class="des-of-author-des" data-index="2">
                            ${settings.sidebar_value2!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key3?? && settings.sidebar_value3??>
                        <div class="des-of-author-des" data-index="3">
                            ${settings.sidebar_value3!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key4?? && settings.sidebar_value4??>
                        <div class="des-of-author-des" data-index="4">
                            ${settings.sidebar_value4!}
                        </div>
                    </#if>
                    <#if settings.sidebar_key5?? && settings.sidebar_value5??>
                        <div class="des-of-author-des" data-index="5">
                            ${settings.sidebar_value5!}
                        </div>
                    </#if>
                </div>
                <div style="clear: both"></div>
            </div>
        </#if>

        <div>
            <script>
                $(".des-of-author-title").click(function () {
                    $(".des-of-author-title.active").removeClass("active");
                    $(".des-of-author-des.active").removeClass("active");
                    const index = $(this).data("index");
                    $(this).addClass("active");
                    $('.des-of-author-des[data-index="'.concat(index, '"]')).addClass("active");
                });
                $('pre').addClass('line-numbers').before($(
                    '<figcaption class="line-numbers-head">' +
                    '<div class="custom-carbon">' +
                    '<div class="custom-carbon-dot custom-carbon-dot--red"></div>' +
                    '<div class="custom-carbon-dot custom-carbon-dot--yellow"></div>' +
                    '<div class="custom-carbon-dot custom-carbon-dot--green"></div>' +
                    '</div>' +
                    '</figcaption>'
                ));
            </script>
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

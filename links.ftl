<#include "layout/head.ftl">
<@head title="友情链接 | ${blog_title!}"/>
<div class="container sidebar-position-right page-home">
    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner">
            <#include "layout/navbar.ftl">
            <#include "layout/brand_wrapper.ftl">
            <#include "layout/master.ftl">
        </div>
    </header>
    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">
                <div id="content" class="content">

                    <div id="posts" class="post posts-expand">
                        <div class="post-block page">
                            <header class="post-header">
                                <h1 class="post-title" itemprop="name headline">友链</h1>
                            </header>
                            <div class="post-body">
                                <#if settings.links_grouping!false>
                                    <div class="links-body">
                                        <#if settings.links_random!false>
                                            <#assign methodVal_grouping = 'listTeamsByRandom' />
                                        <#else>
                                            <#assign methodVal_grouping = 'listTeams' />
                                        </#if>
                                        <div class="links">
                                            <@linkTag method=methodVal_grouping>
                                                <#list teams as item>
                                                    <#if item.team??>
                                                        <#if item.team?? && item.team!=''>
                                                            <h3 style="margin: 10px">${item.team}</h3>
                                                        </#if>
                                                        <ul>
                                                            <#list item.links as link>
                                                                <li>
                                                                    <a href="${link.url!}" target="_blank"
                                                                       rel="external">
                                                                        <img class="lazy lazyImg"
                                                                             data-original="${link.logo}">
                                                                        <h4>${link.name!}</h4>
                                                                        <#if link.description!=''>
                                                                            <p>${link.description}</p>
                                                                        <#else>
                                                                            <p>这个家伙很懒，什么也没留下</p>
                                                                        </#if>
                                                                    </a>
                                                                </li>
                                                            </#list>
                                                        </ul>
                                                    </#if>
                                                </#list>
                                            </@linkTag>
                                        </div>
                                    </div>
                                <#else>
                                    <div class="links">
                                        <ul>
                                            <#if settings.links_random!false>
                                                <#assign methodVal = 'listByRandom' />
                                            <#else>
                                                <#assign methodVal = 'list' />
                                            </#if>
                                            <@linkTag method=methodVal>
                                                <#if links?? && links?size gt 0>
                                                    <#list links as link>
                                                        <li>
                                                            <a href="${link.url!}" target="_blank" rel="external">
                                                                <img class="no-fancybox" data-original="${link.logo}">
                                                                <h4>${link.name!}</h4>
                                                                <#if link.description!=''>
                                                                    <p>${link.description}</p>
                                                                <#else>
                                                                    <p>这个家伙很懒，什么也没留下</p>
                                                                </#if>
                                                            </a>
                                                        </li>
                                                    </#list>
                                                </#if>
                                            </@linkTag>
                                        </ul>
                                    </div>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <#include "layout/sheet_directory.ftl">
        </div>
    </main>
    <#include "layout/footer.ftl">
    <#include "layout/back_to_top.ftl">
</div>
<#include "layout/tail.ftl">


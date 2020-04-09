<#include "layout/_include/head.ftl">
<@head title="${options.blog_title!} | 友链"/>
<div class="container sidebar-position-right page-home">

    <#include "layout/_include/header.ftl">
    <#include "layout/_include/header_inner.ftl">
    <#include "layout/_include/navbar.ftl">
    <#include "layout/_include/brand_wrapper.ftl">
    <#include "layout/_include/master.ftl">
    <#include "layout/_include/container_tail.ftl">
    <#include "layout/_include/header_tail.ftl">
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
                                <div class="links">
                                    <ul>
                                        <@linkTag method="list">
                                            <#if links?? && links?size gt 0>
                                                <#list links as link>
                                                    <li>
                                                        <a href="${link.url!}" target="_blank" rel="external">
                                                            <#if link.logo?? && link.logo?length gt 0>
                                                                <img class="no-fancybox" src="${link.logo}">
                                                            <#else >
                                                                <img class="no-fancybox" src="${link.url}/favicon.ico">
                                                            </#if>
                                                            <h4>${link.name!}</h4>
                                                            <#if link.description!=''>
                                                                <p> - ${link.description}</p>
                                                            </#if>
                                                        </a>
                                                    </li>
                                                </#list>
                                            </#if>
                                        </@linkTag>
                                    </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap">
                    <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>

            <#include "layout/_include/custom_sidebar.ftl">
        </div>
    </main>
    <#include "layout/_include/footer.ftl">
    <#include "layout/_include/back_to_top.ftl">
    <#include "layout/_include/container_tail.ftl">
    <#include "layout/_include/tail.ftl">


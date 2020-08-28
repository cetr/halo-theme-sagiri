<#include "layout/_include/head.ftl">
<@head title="${settings.jounarls_title!'日志'} | ${blog_title!}"/>

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
                    <section id="posts" class="posts-expand">
                        <#list journals.content as journal>
                            <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                                <div class="post-date">
                                    <div class="post-month"> ${journal.createTime?string('MM')}</div>
                                    <div class="post-day"> ${journal.createTime?string('dd')}</div>
                                </div>
                                <div class="post-block">
                                    <header class="post-header"></header>
                                    <div class="post-body" itemprop="articleBody">
                                        <div style="text-indent:2em;">${journal.content!}</div>
                                    </div>
                                    <footer class="post-footer">
                                        <p style="float:right; font-style: italic">—— <a href="${blog_url!}" rel="external nofollow">${user.nickname}</a> ${journal.createTime?string('yyyy年MM月dd日')}</p>
                                    </footer>
                                </div>
                            </article>
                        </#list>
                    </section>

                    <#if journals.totalPages gt 1>
                        <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
                            <#include "layout/_include/pagebar.ftl">
                        </@paginationTag>
                    </#if>
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

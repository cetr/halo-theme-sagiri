<#include "layout/head.ftl">
<@head title="${settings.jounarls_title!'日志'} | ${blog_title!}"/>

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
                    <section id="posts" class="posts-expand">
                        <#list journals.content as journal>
                            <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                                <div class="post-date">
                                    <div class="post-month"> ${journal.createTime?string('MM')}月</div>
                                    <div class="post-day"> ${journal.createTime?string('dd')}</div>
                                </div>
                                <div class="post-block">
                                    <header class="post-header"></header>
                                    <div class="post-body" itemprop="articleBody">${journal.content!}</div>
                                    <footer class="post-footer">
                                        <div style="height: 28px">
                                            <p style="float:right; font-style: italic">
                                                ${user.nickname}
                                                ${journal.createTime?string('yyyy年MM月dd日')}
                                            </p>
                                        </div>
                                    </footer>
                                </div>
                                <details>
                                    <summary>展开评论</summary>
                                    <halo-comment id="${journal.id?c}" type="journal"/>
                                </details>
                            </article>
                        </#list>
                    </section>

                    <#if journals.totalPages gt 1>
                        <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
                            <#include "layout/pagebar.ftl">
                        </@paginationTag>
                    </#if>
                </div>
            </div>

            <#include "layout/sheet_directory.ftl">
        </div>
    </main>
    <#include "layout/footer.ftl">
    <#include "layout/back_to_top.ftl">
</div>
<#include "layout/tail.ftl">

<#include "layout/_include/head.ftl">
<@head title="分类：${category.name} | ${blog_title!}"/>
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

                    <div class="post-block category post">
                        <div id="posts" class="posts-collapse">
                            <div class="collection-title"><h1>${category.name}<small>分类</small></h1></div>
                            <#list posts.content as post>
                            <article class="post post-type-normal" itemscope="" itemtype="http://schema.org/Article">
                                <header class="post-header">
                                    <h2 class="post-title">
                                        <a class="post-title-link scaleup" href="${post.fullPath}" itemprop="url"><span
                                                    itemprop="name">${post.title}</span></a></h2>
                                    <div class="post-meta">
                                        <time class="post-time" itemprop="dateCreated"
                                              datetime="${post.createTime}" content="${post.createTime?string('yyyy-MM-dd')}">${post.createTime?string('MM-dd')}
                                        </time>
                                    </div>
                                </header>
                            </article>
                            </#list>
                            <#if posts.totalPages gt 1>
                                <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                                    <#include "layout/_include/pagebar.ftl">
                                </@paginationTag>
                            </#if>
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

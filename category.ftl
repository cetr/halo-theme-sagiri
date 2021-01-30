<#include "layout/head.ftl">
<@head title="分类：${category.name} | ${blog_title!}"/>
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

                    <div class="post-block category post">
                        <div id="posts" class="posts-collapse">
                            <div class="collection-title"><h1>${category.name}<small>分类</small></h1></div>
                            <#list posts.content as post>
                                <article class="post post-type-normal" itemscope=""
                                         itemtype="http://schema.org/Article">
                                    <header class="post-header">
                                        <h2 class="post-title">
                                            <a class="post-title-link scaleup" href="${post.fullPath}"
                                               itemprop="url"><span
                                                        itemprop="name">${post.title}</span></a></h2>
                                        <div class="post-meta">
                                            <time class="post-time" itemprop="dateCreated"
                                                  datetime="${post.createTime}"
                                                  content="${post.createTime?string('yyyy-MM-dd')}">${post.createTime?string('MM-dd')}
                                            </time>
                                        </div>
                                    </header>
                                </article>
                            </#list>
                            <#if posts.totalPages gt 1>
                                <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                                    <#include "layout/pagebar.ftl">
                                </@paginationTag>
                            </#if>
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

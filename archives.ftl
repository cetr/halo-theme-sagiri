<#include "layout/head.ftl">
<@head title="归档 | ${blog_title!}"/>

<div class="container sidebar-position-right page-archive">

    <#include "layout/header.ftl">
        <#include "layout/header_inner.ftl">
            <#include "layout/navbar.ftl">
            <#include "layout/brand_wrapper.ftl">
            <#include "layout/master.ftl">
        <#include "layout/container_tail.ftl">
        <#include "layout/header_tail.ftl">

    <main id="main" class="main">
        <div class="main-inner">
            <div class="content-wrap">
                <div id="content" class="content">


                    <div class="post-block archive post">
                        <div id="posts" class="posts-collapse">
                            <h1 class="post-collapse-title" style="text-align: center" itemprop="name headline">归档</h1>

                            <@postTag method="archiveYear">
                                <#list archives as archive>

                                        <div class="collection-year">
                                            <div class="collection-title"><h2 class="archive-year" id="archive-year-2020">${archive.year?c}</h2></div>

                                            <#list archive.posts?sort_by("createTime")?reverse as post>
                                                <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                                                    <header class="post-header">

                                                        <h2 class="post-title">
                                                            <a class="post-title-link" href="${post.fullPath}" itemprop="url">
                                                                <span itemprop="name">${post.title}</span>
                                                            </a>
                                                        </h2>

                                                        <div class="post-meta">
                                                            <time class="post-time" itemprop="dateCreated"
                                                                  datetime="${post.createTime}"
                                                                  content="${post.createTime?string('yyyy-MM-dd')}">
                                                                ${post.createTime?string('MM-dd')}
                                                            </time>
                                                        </div>
                                                    </header>
                                                </article>
                                            </#list>
                                        </div>
                                </#list>
                            </@postTag>

                        </div>
                    </div>
                </div>
            </div>
            <#include "layout/sheet_directory.ftl">

        </div>
    </main>


    <#include "layout/footer.ftl">
    <#include "layout/back_to_top.ftl">
    <#include "layout/container_tail.ftl">
    <#include "layout/tail.ftl">

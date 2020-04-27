<#include "layout/_include/head.ftl">
<@head title="归档 | ${blog_title!}"/>

<div class="container sidebar-position-right page-archive">

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

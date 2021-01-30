<#include "layout/head.ftl">
<@head title="${blog_title!}"/>

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

                        <#list posts.content as post>
                            <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                                <div class="post-date">
                                    <div class="post-month"> ${post.createTime?string('MM')}月</div>
                                    <div class="post-day"> ${post.createTime?string('dd')}</div>
                                </div>
                                <#if (post.categories?size gt 0 )>
                                    <#list post.categories as category>
                                        <div class="post-badge">
                                        <span itemprop="about" itemscope="" itemtype="http://schema.org/Thing">
                                            <a href="${category.fullPath}" itemprop="url" rel="index">
                                                <span itemprop="name">${category.name}</span>
                                            </a>
                                        </span>
                                        </div>
                                    </#list>
                                </#if>

                                <div class="post-block">
                                    <link itemprop="mainEntityOfPage" href="${post.fullPath}">
                                    <header class="post-header">
                                        <h1 class="post-title" itemprop="name headline">
                                            <a class="post-title-link" href="${post.fullPath}"
                                               itemprop="url">${post.title}</a>
                                        </h1>
                                        <div class="post-meta">
                                            <span class="post-time" style="color: #00a7e0">
                                                <span class="post-meta-item-icon"><i
                                                            class="fa fa-calendar-o"></i></span>
                                                <span class="post-meta-item-text">发表于</span>
                                                <time title="Post created" itemprop="dateCreated datePublished"
                                                      datetime="${post.createTime}">
                                                    ${post.createTime?string('yyyy-MM-dd')}
                                                </time>
                                            </span>
                                            <span class="post-wordcount">
                                                <span class="post-meta-divider">•</span>
                                                <span class="post-meta-item-icon">
                                                    <i class="far fa-file-word"></i>
                                                </span>
                                                <span class="post-meta-item-text">字数统计</span>
                                                <span title="字数统计">${post.wordCount?c}</span>
                                            </span>
                                            <span class="leancloud_visitors" style="color:#ff3f1a">
                                                <span class="post-meta-divider">•</span>
                                                <span class="post-meta-item-icon"><i class="far fa-eye"></i></span>
                                                <span class="post-meta-item-text">被</span>
                                                <span class="leancloud-visitors-count">${post.visits}</span>
                                                <span class="post-meta-item-text">人看爆</span>
                                            </span>
                                        </div>
                                    </header>

                                    <div class="post-body" itemprop="articleBody">
                                        <#if post.thumbnail?length gt 1>
                                            <p><img alt="${post.title}" src="${post.thumbnail!}" class=""/></p>
                                        </#if>
                                        <p style="text-indent:2em;">${post.summary!}</p>
                                        <div class="post-button text-center">
                                            <a class="btn post-more-btn" href="${post.fullPath}" rel="contents">
                                                阅读全文 &raquo;
                                            </a>
                                        </div>
                                    </div>
                                    <footer class="post-footer">

                                    </footer>
                                </div>

                            </article>
                        </#list>

                    </section>

                    <#if posts.totalPages gt 1>
                        <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
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

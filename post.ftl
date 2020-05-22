<#include "layout/_include/head.ftl">
<@head title="${post.title} | ${blog_title!}"/>

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
                        <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                            <div class="post-date">
                                <div class="post-month"> ${post.createTime?string('MM')}</div>
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
                                <header class="post-header">
                                    <h1 class="post-title" itemprop="name headline">
                                        <a class="post-title-link" href="${post.fullPath}"
                                           itemprop="url">${post.title}</a>
                                    </h1>
                                    <div class="post-meta">
                                        <span class="post-time" style="color: #00a7e0">
                                            <span class="post-meta-item-icon"><i class="fa fa-calendar-o"></i></span>
                                            <span class="post-meta-item-text">发表于</span>
                                            <time title="Post created" itemprop="dateCreated datePublished"
                                                  datetime="${post.createTime}">
                                                ${post.createTime?string('yyyy-MM-dd')}
                                            </time>
                                        </span>
                                        <#if (post.tags?size gt 0 )>
                                            <span class="post-tags">
                                            <span class="post-meta-divider">•</span>
                                            <span class="post-meta-item-icon"><i class="fa fa-tag"></i></span>

                                            <#list post.tags as tag>
                                                <a href="${tag.fullPath}" itemprop="url" rel="index">
                                                       <span title="标签">${tag.name}</span>
                                                </a>
                                            </#list>
                                        </span>
                                        </#if>

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
                                    ${post.formatContent!}
                                </div>
                                <div class="post-share">分享到：</div>
                                <footer class="post-footer">
                                    <div class="post-nav">
                                        <#if prevPost??>
                                            <div class="post-nav-next post-nav-item">
                                                <a href="${prevPost.fullPath!}" rel="next" title="${prevPost.title!}">
                                                    <i class="fas fa-angle-left"></i> ${prevPost.title!}</a>
                                            </div>
                                        </#if>
                                        <#if nextPost??>
                                            <span class="post-nav-divider"></span>
                                            <div class="post-nav-prev post-nav-item">
                                                <a href="${nextPost.fullPath!}" rel="prev"
                                                   title="${nextPost.title!}">${nextPost.title!}
                                                    <i class="fas fa-angle-right"></i></a>
                                            </div>
                                        </#if>
                                    </div>
                                </footer>
                            </div>
                        </article>
                    </section>
                </div>
                <script>$('pre').addClass("line-numbers");</script>
                <div id="comments" class="comments">
                    <#include "layout/comment.ftl">
                    <@comment post=post type="post" />
                </div>
            </div>


            <div class="sidebar-toggle">
                <div class="sidebar-toggle-line-wrap">
                    <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
                    <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
                </div>
            </div>

            <#include "layout/_include/post_sidebar.ftl">
        </div>
    </main>
    <#include "layout/_include/footer.ftl">
    <#include "layout/_include/back_to_top.ftl">
    <#include "layout/_include/container_tail.ftl">
    <#include "layout/_include/tail.ftl">

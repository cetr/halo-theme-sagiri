<#include "layout/_include/head.ftl">
<@head title="${sheet.title!} | ${blog_title!}"/>

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
                            <div class="post-block">
                                <header class="post-header">
                                    <h1 class="post-title" itemprop="name headline">
                                        ${post.title}
                                    </h1>
                                    <div class="post-meta">
                                        <span class="post-time" style="color: #00a7e0">
                                            <span class="post-meta-item-icon"><i class="fa fa-calendar-o"></i></span>
                                            <span class="post-meta-item-text">发表于</span>
                                            <time title="Post created" itemprop="dateCreated datePublished" datetime="${post.createTime}">
                                                ${post.createTime?string('yyyy-MM-dd')}
                                            </time>
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
                                    ${sheet.formatContent!}
                                </div>
                            </div>
                        </article>
                    </section>
                </div>
                <div id="comments" class="comments">
                    <#include "layout/comment.ftl">
                    <@comment post=sheet type="sheet" />
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

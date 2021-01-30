<#include "layout/head.ftl">
<@head title="${sheet.title!} | ${blog_title!}"/>

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
                        <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
                            <div class="post-block">
                                <header class="post-header">
                                    <h1 class="post-title" itemprop="name headline">
                                        ${post.title}
                                    </h1>
                                </header>
                                <div class="post-body" itemprop="articleBody">
                                    ${sheet.formatContent!}
                                </div>
                            </div>
                        </article>
                    </section>
                </div>
                <#if !post.disallowComment!false>
                    <div id="comments" class="comments">
                        <#include "layout/comment.ftl">
                        <@comment post=sheet type="sheet" />
                    </div>
                </#if>
            </div>
            <#include "layout/sheet_directory.ftl">
        </div>
    </main>
    <#include "layout/footer.ftl">
    <#include "layout/back_to_top.ftl">
</div>
<#include "layout/tail.ftl">

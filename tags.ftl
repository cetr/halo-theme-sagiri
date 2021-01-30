<#include "layout/head.ftl">
<@head title="标签 | ${blog_title!}"/>
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

                    <div class="post-block archive post">

                        <div id="posts" class="posts-collapse">
                            <div class="category-all-page">
                                <div class="category-all-title">标签列表</div>
                                <div class="category-all">
                                    <ul class="category-list">
                                        <@tagTag method="list">
                                            <#if tags?? && tags?size gt 0>
                                                <#list tags as tag>
                                                    <li class="category-list-item">
                                                        <a class="category-list-link"
                                                           href="${tag.fullPath}/">${tag.name}</a>
                                                        <span class="category-list-count">${tag.postCount}</span>
                                                    </li>
                                                </#list>
                                            </#if>
                                        </@tagTag>
                                    </ul>
                                </div>
                            </div>
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


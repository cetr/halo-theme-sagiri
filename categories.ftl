<#include "layout/head.ftl">
<@head title="分类 | ${blog_title!}"/>
<div class="container sidebar-position-right page-home">

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
                            <div class="category-all-page">
                                <div class="category-all-title">分类列表</div>
                                <div class="category-all">
                                    <ul class="category-list">
                                        <@categoryTag method="list">
                                            <#if categories?? && categories?size gt 0>
                                                <#list categories as category>
                                                    <li class="category-list-item">
                                                        <a class="category-list-link" href="${category.fullPath}/">${category.name}</a>
                                                        <span class="category-list-count">${category.postCount}</span>
                                                    </li>
                                                </#list>
                                            </#if>
                                        </@categoryTag>
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
    <#include "layout/container_tail.ftl">
    <#include "layout/tail.ftl">


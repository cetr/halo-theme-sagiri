<#include "layout/_include/head.ftl">
<@head title="分类 | ${blog_title!}"/>
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


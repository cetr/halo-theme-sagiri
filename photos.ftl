<#include "layout/_include/head.ftl">
<@head title="相册 | ${blog_title!}"/>

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
                    <section id="post" class="custom-page posts-expand">
                        <article class="post post-type-normal" itemscope="" itemtype="http://schema.org/ImageGallery">
                            <#--图片盒子-->
                            <div class="user-picbox picbox">
                                <@photoTag method="list">
                                    <#list photos as photo>
                                        <div class="pics">
                                            <a data-fancybox="images" href="${photo.url!}" class="image">
                                                <img class="user-gallery" data-original="${photo.thumbnail!}"
                                                     src="${photo.thumbnail!}"
                                                     alt="${photo.name!}" itemprop="contentUrl"/></a>
                                        </div>
                                    </#list>
                                </@photoTag>
                            </div>
                        </article>
                    </section>
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

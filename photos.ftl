<#include "layout/head.ftl">
<@head title="相册 | ${blog_title!}"/>

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
            <#include "layout/sheet_directory.ftl">
        </div>
    </main>
    <#include "layout/footer.ftl">
    <#include "layout/back_to_top.ftl">
</div>
<#include "layout/tail.ftl">

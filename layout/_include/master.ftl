<div class="site-master" itemprop="author" itemscope itemtype="http://schema.org/Person">
    <img class="scrolldown_b site-master-avatar scaleup" itemprop="image" src="${user.avatar!}" alt="${user.nickname!}"/>
    <h2 class="site-master-description scaleup" id="hitokoto" itemprop="description">
        <#if settings.hitokoto!false>
            获取中...
        <#else >
            ${user.description!}
        </#if>
    </h2>
</div>

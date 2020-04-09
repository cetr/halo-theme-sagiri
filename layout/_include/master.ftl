<div class="site-master" itemprop="author" itemscope itemtype="http://schema.org/Person">
    <img class="site-master-avatar scaleup" itemprop="image" src="${user.avatar!}" alt="${user.nickname!}"/>
    <h2 class="site-master-description scaleup" itemprop="description">
        <#if settings.hitokoto!false>
            <p id="hitokoto">获取中...</p>
        <#else >
            <p>${user.description!}</p>
        </#if>
    </h2>
</div>


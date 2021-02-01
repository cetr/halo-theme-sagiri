<div class="site-master" itemprop="author" itemscope itemtype="http://schema.org/Person">
    <img class="scrolldown_b site-master-avatar scaleup" itemprop="image" src="${user.avatar!}"
         alt="${user.nickname!}"/>
    <h2 class="site-master-description scaleup" id="hitokoto" itemprop="description">
        <#if user.description==''>
            这里通过后台 用户-个人资料-个人说明 来设置
        <#else>
            ${user.description!}
        </#if>
    </h2>
</div>

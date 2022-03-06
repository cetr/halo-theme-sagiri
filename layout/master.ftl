<div class="site-master" itemprop="author">
    <img class="scrolldown_b site-master-avatar scaleup" src="${user.avatar!'${theme_base!}/source/images/avatar.png'}"
         alt="${user.nickname!}"/>
    <h2 class="site-master-description scaleup">
        <#if user.description==''>
            这里通过后台 用户-个人资料-个人说明 来设置
        <#else>
            ${user.description!}
        </#if>
    </h2>
</div>

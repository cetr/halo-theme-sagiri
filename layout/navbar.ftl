<nav class="site-nav">
    <ul id="menu" class="menu">
        <@menuTag method="treeByTeam" team="">
            <#list menus?sort_by('priority') as menu>
                <li class="menu-item">
                    <#if menu.children?? && menu.children?size gt 0>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${menu.icon!'<i class="menu-item-icon fa fa-fw"></i>'}<br/>
                            ${menu.name!}
                        </a>
                        <div class="navbar-dropdown">
                            <#list menu.children?sort_by('priority') as child>
                                <a class="nav-child" href="${child.url!}" target="${child.target!}">
                                    ${child.name!}
                                </a>
                            </#list>
                        </div>
                    <#else >
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${menu.icon!'<i class="menu-item-icon fa fa-fw"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    </#if>
                </li>
            </#list>
        </@menuTag>
        <li class="menu-item search">
            <form class="search-form" action="${blog_url!}/search">
                <input name="keyword" type="text" autocomplete="off" class="search-input" placeholder="站内搜索">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </form>
        </li>
    </ul>
</nav>

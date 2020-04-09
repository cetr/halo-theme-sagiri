<nav class="site-nav">
    <ul id="menu" class="menu">
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <li class="menu-item">
                    <#if menu_index==0>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${settings.nav_icon0!'<i class="menu-item-icon fa fa-fw fa-home"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    <#elseif menu_index==1>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${settings.nav_icon1!'<i class="menu-item-icon fa fa-fw fa-archive"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    <#elseif menu_index==2>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${settings.nav_icon2!'<i class="menu-item-icon fa fa-fw fa-tags"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    <#elseif menu_index==3>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${settings.nav_icon3!'<i class="menu-item-icon fa fa-fw fa-link"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    <#elseif menu_index==4>
                        <a href="${menu.url!}" target="${menu.target!}">
                            ${settings.nav_icon4!'<i class="menu-item-icon fa fa-fw fa-heartbeat"></i>'}<br/>
                            ${menu.name!}
                        </a>
                    <#else>
                        <a href="${menu.url!}" target="${menu.target!}">
                            <i class="menu-item-icon fa fa-fw"></i><br/>
                            ${menu.name!}
                        </a>
                    </#if>

                </li>
            </#list>
        </@menuTag>
<#--        menu-item-icon fas fa-heartbeat-->
        <li class="menu-item search">
            <form class="search-form"><input name="keyword" type="text" class="search-input" placeholder="站内搜索">
                <button type="submit" class="search-submit"><i class="fas fa-search"></i></button>
            </form>
        </li>
    </ul>
</nav>

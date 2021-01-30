<nav class="pagination" id="pagination">
    <#if pagination.hasPrev>
        <a class="extend prev" href="${pagination.prevPageFullPath!}"><i class="fas fa-angle-left"></i></a>
    <#else >
    </#if>
    <#list pagination.rainbowPages as number>
        <#if number.isCurrent>
            <a class="page-number current" href="${number.fullPath!}">${number.page!}</a>
        <#else>
            <a class="page-number"
               href="${number.fullPath!}">${number.page!}</a>
        </#if>
    </#list>
    <#if pagination.hasNext>
        <a class="extend next" href="${pagination.nextPageFullPath!}"><i class="fas fa-angle-right"></i></a>
    <#else >
    </#if>
</nav>


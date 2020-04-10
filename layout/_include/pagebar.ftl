<#macro pagebar>
    <nav class="pagination">
        <#if posts.getTotalPages() gt 0>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="4">
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
            </@paginationTag>
        </#if>
    </nav>
</#macro>

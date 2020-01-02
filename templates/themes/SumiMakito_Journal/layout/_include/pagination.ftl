<#macro pagination url="">
    <#if posts?? && posts.totalPages gt 1>
        <div class="pagination <#if is_index??>index-page</#if>">
            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <a class="pagination-action" href="${url}" style="opacity: 1">
                <#else>
                    <a class="pagination-action" href="${url}page/${posts.number}" style="opacity: 1">
                </#if>
            <#else>
                <a class="pagination-action" style="opacity: 0">
            </#if>
                <i class="material-icons pagination-action-icon">
                    chevron_left
                </i>
                </a>
                <div class="pagination-indicator">
                    <span>${posts.number+1}/${posts.totalPages!}</span>
                </div>
                <#if posts.hasNext()>
                <a class="pagination-action" href="${url}page/${posts.number+2}" style="opacity: 1">
                    <#else>
                <a class="pagination-action" style="opacity: 0">
                    </#if>
                    <i class="material-icons pagination-action-icon">
                        chevron_right
                    </i>
                </a>
        </div>
    </#if>
</#macro>
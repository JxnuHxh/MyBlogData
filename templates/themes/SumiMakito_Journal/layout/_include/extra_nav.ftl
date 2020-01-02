<#macro extra_nav __noPager,url>
<div ref="extraContainer" class="extra-container">
    <div class="pagination">
        <a id="globalBackToTop" class="pagination-action animated-visibility" href="#top" :class="{ invisible: scrollY == 0 }">
            <i class="material-icons pagination-action-icon">
                keyboard_arrow_up
            </i>
        </a>

        <#if __noPager>
            <#if posts?? && posts.totalPages gt 1>
                <div class="pagination-indicator">
                    <span style="text-align: center">
                        ${posts.number+1}<br><div style="display: inline-block; transform: rotate(-28deg)">-</div><br>${posts.totalPages!}
                    </span>
                </div>
            </#if>

            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <a class="pagination-action" href="${url}">
                <#else>
                    <a class="pagination-action" href="${url}page/${posts.number}">
                </#if>
                    <i class="material-icons pagination-action-icon">
                        chevron_left
                    </i>
                </a>
            </#if>

            <#if posts.hasNext()>
                <a class="pagination-action" href="${url}page/${posts.number+2}">
                    <i class="material-icons pagination-action-icon">
                        chevron_right
                    </i>
                </a>
            </#if>
        </#if>
    </div>
</div>
</#macro>
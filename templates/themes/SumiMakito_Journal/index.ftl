<#include "layout/_include/head.ftl">
<@head title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav true '${context!}/'/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-no-background">
        <#list posts.content as post>
        <a href="${context!}/archives/${post.url!}" class="a-block">
            <div class="post-item-wrapper">
                <div class="post-item post-item-no-divider">
                    <div class="post-item-info-wrapper">
                        <div class="post-item-title">
                            ${post.title!}
                        </div>
                        <div class="post-item-summary">
                            ${post.summary!}...
                        </div>
                        <div class="post-item-meta">
                            ${post.createTime?string('yyyy-MM-dd')}
                        </div>
                    </div>
                    <#if post.thumbnail?? && post.thumbnail!=''>
                    <div class="post-item-image-wrapper">
                        <div class="post-item-image" style="background-image: url('${post.thumbnail!}')"></div>
                    </div>
                    </#if>
                </div>
            </div>
        </a>
        </#list>
        <#include "layout/_include/pagination.ftl">
        <@pagination url="${context!}/"></@pagination>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#include "layout/_include/tail.ftl">
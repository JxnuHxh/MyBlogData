<#include "layout/_include/head.ftl">
<@head title="分类: ${category.name} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav true '${context!}/categories/${category.slugName}/'/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post-item-wrapper post-item-wrapper-no-hover">
            <div class="post-item post-item-no-gaps">
                <div class="post-item-info-wrapper">
                    <div class="post-item-title  post-item-title-small">
                        <a href="${context!}/categories">分类</a> / ${category.name!}
                    </div>
                </div>
            </div>
        </div>
        <#list posts.content as post>
        <a href="${context!}/archives/${post.url!}" class="a-block">
            <div class="post-item-wrapper">
                <div class="post-item post-item-no-gaps">
                    <div class="post-item-info-wrapper">
                        <div class="post-item-title">
                            ${post.title!}
                        </div>
                        <div class="post-item-meta">
                            ${post.createTime?string('yyyy-MM-dd')}
                        </div>
                    </div>
                </div>
            </div>
        </a>
        </#list>
        <#include "layout/_include/pagination.ftl">
        <@pagination url="${context!}/categories/${category.slugName}/"></@pagination>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">

<#include "layout/_include/tail.ftl">
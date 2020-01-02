<#include "layout/_include/head.ftl">
<@head title="分类 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav false,'' />
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <a class="a-block">
            <div class="post-item-wrapper post-item-wrapper-no-hover">
                <div class="post-item post-item-no-gaps">
                    <div class="post-item-info-wrapper">
                        <div class="post-item-title post-item-title-small">
                            分类
                        </div>
                    </div>
                </div>
            </div>
        </a>
        <@categoryTag method="list">
            <#list categories as category>
                <a href="${context!}/categories/${category.slugName!}" class="a-block">
                    <div class="post-item-wrapper">
                        <div class="post-item post-item-no-gaps">
                            <div class="post-item-info-wrapper">
                                <div class="post-item-title">
                                    ${category.name!}
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </#list>
        </@categoryTag>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">

<#include "layout/_include/tail.ftl">
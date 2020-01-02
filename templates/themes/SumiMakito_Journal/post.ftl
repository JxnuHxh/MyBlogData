<#include "layout/_include/head.ftl">
<@head title="${post.title!} - ${options.blog_title!}" keywords="${post.title!},${options.seo_keywords!},${tagWords!}" description="${post.summary!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav false ''/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post">
            <div <#if post.thumbnail?? && post.thumbnail!=''>class="post-head-wrapper" style="background-image: url('${post.thumbnail!}')"
                 <#else>class="post-head-wrapper-text-only"</#if>>
                <div class="post-title">
                    ${post.title!}
                    <div class="post-meta">
                        <time datetime="${post.createTime!}" itemprop="datePublished">
                            ${post.createTime?string('yyyy-MM-dd HH:mm')}
                        </time>&nbsp;
                        <#if categories?? && categories?size gt 0>
                            <#assign categoriesCount = categories?size />
                            <i class="material-icons" style="">folder</i>
                            <#list categories as category>
                                <a href='${context!}/categories/${category.slugName!}'>${category.name!}</a>${(categoriesCount != category_index+1)?string(', ','')}
                            </#list>
                        </#if>

                        <#if tags?? && tags?size gt 0>
                            <#assign tagsCount = tags?size />
                            <i class="material-icons" style="">label</i>
                            <#list tags as tag>
                                <a href='${context!}/tags/${tag.slugName!}'>${tag.name!}</a>${(tagsCount != tag_index+1)?string(', ','')}
                            </#list>
                        </#if>
                    </div>
                </div>
            </div>

            <div class="post-body-wrapper">
                <div class="post-body" v-pre>
                    ${post.formatContent!}
                </div>
            </div>

            <#include "layout/_include/post_pagination.ftl">

            <#include "layout/_include/comment_templates.ftl">
            <@comment_templates post,'post' />
        </div>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#if !post.disallowComment!false>
    <#include "layout/_include/comment_includes.ftl">
</#if>
<#include "layout/_include/tail.ftl">

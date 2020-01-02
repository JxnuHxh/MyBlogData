<#include "layout/_include/head.ftl">
<@head title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav false ''/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post">
            <div class="<#if post.thumbnail?? && post.thumbnail!=''>post-head-wrapper<#else>post-head-wrapper-text-only</#if>"
                 style="background-image: url('${sheet.thumbnail!}')">
                <div class="post-title">
                    ${sheet.title!}
                    <div class="post-meta">
                        <time datetime="${sheet.createTime!}" itemprop="datePublished">
                            ${sheet.createTime?string('yyyy-MM-dd HH:mm')}
                        </time>
                    </div>
                </div>
            </div>

            <div class="post-body-wrapper">
                <div class="post-body">
                    ${sheet.formatContent!}
                </div>
            </div>

            <#include "layout/_include/comment_templates.ftl">
            <@comment_templates sheet,'sheet' />
        </div>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#if !sheet.disallowComment!false>
    <#include "layout/_include/comment_includes.ftl">
</#if>
<#include "layout/_include/tail.ftl">
<#include "layout/_include/head.ftl">
<@head title="友情链接 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav false ''/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post">
            <div class="post-head-wrapper-text-only"
                 style="background-image: url('')">
                <div class="post-title">
                    友情链接
                </div>
            </div>

            <div class="post-body-wrapper">
                <div class="post-body">
                    <ul>
                        <@linkTag method="list">
                            <#list links as link>
                                <li><a href="${link.url!}" target="_blank" rel="noopener">${link.name!}</a></li>
                            </#list>
                        </@linkTag>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#include "layout/_include/tail.ftl">
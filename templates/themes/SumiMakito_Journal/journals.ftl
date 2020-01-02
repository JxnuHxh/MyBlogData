<#include "layout/_include/head.ftl">
<@head title="Journals - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"></@head>
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
                    Journals
                </div>
            </div>

            <div class="post-body-wrapper">
                <div class="post-body">
<pre>
[
<#list journals.content?sort_by('createTime')?reverse as journal>
    {
        id: ${journal.id!},
        createTime: "${journal.createTime?string('yyyy-MM-dd HH:mm:ss')}",
        content: "${journal.content!}"
        <#if journal_has_next>
    },
    <#else>
    }
    </#if>
</#list>
]
</pre>
                </div>
            </div>
        </div>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#include "layout/_include/tail.ftl">
<#macro comment_templates post,type>
    <#if post.disallowComment!false>
    <p style="opacity: 0.6; padding: 30px 15px" align="center">
        <small>这篇内容的评论功能已被禁用</small>
    </p>
    <#else>
    <div class="post-comment-wrapper">
        <halo-comment id="${post.id?c}" type="${type}"/>
    </div>
    </#if>
</#macro>
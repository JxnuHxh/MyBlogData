<nav class="post-pagination">
    <#if prePost??>
    <a class="newer-posts" href="${context!}/archives/${prePost.url}">
        上一篇<br>${prePost.title}
    </a>
    </#if>
    <span class="page-number"></span>
    <#if nextPost??>
    <a class="older-posts" href="${context!}/archives/${nextPost.url}">
        下一篇<br>${nextPost.title}
    </a>
    </#if>
</nav>

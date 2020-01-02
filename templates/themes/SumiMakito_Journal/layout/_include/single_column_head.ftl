<div class="single-column-drawer-container" ref="drawer"
     v-bind:class="{ 'single-column-drawer-container-active': isDrawerOpen }">
    <div class="drawer-content">
        <div class="drawer-menu">
            <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <a class="a-block drawer-menu-item" href="${menu.url!}" target="${menu.target!}">
                    ${menu.name!}
                </a>
            </#list>
            </@menuTag>

            <#if settings.sidebar_rss!true>
            <a class="a-block drawer-menu-item" href="${context!}/atom.xml">
                RSS
            </a>
            </#if>
        </div>
    </div>
</div>
<transition name="fade">
    <div v-bind:class="{ 'single-column-drawer-mask': mounted }" v-if="isDrawerOpen" v-on:click="toggleDrawer"></div>
</transition>
<nav ref="navBar" class="navbar sticky-top navbar-light single-column-nav-container">
    <div ref="navBackground" class="nav-background"></div>
    <div class="container container-narrow nav-content">
        <button id="nav_dropdown_btn" class="nav-dropdown-toggle" type="button" v-on:click="toggleDrawer">
            <i class="material-icons">
                menu
            </i>
        </button>
        <a ref="navTitle" class="navbar-brand" href="${context!}">
            ${options.blog_title!}
        </a>
    </div>
</nav>
<div class="single-column-header-container" ref="pageHead"
     v-bind:style="{ transform: 'translateZ(0px) translateY('+.3*scrollY+'px)', opacity: 1-navOpacity }">
    <a href="${context!}">
        <div class="single-column-header-title">${options.blog_title!}</div>
        <div class="single-column-header-subtitle">${user.description!}</div>
    </a>
</div>
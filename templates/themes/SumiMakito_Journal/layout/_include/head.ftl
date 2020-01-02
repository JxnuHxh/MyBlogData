<#macro head title,keywords,description>
<!DOCTYPE html>
<html lang="zh" xmlns:v-bind="http://www.w3.org/1999/xhtml">
<head>
    <title>${title!}</title>
    <meta charset="utf-8">
    <meta name="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="${user.nickname!}">
    <meta name="description" content="${description!}">
    <meta name="keywords" content="${keywords!}">
    <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${context!}/atom.xml">
    <meta charset="utf-8">
    <meta name="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="telephone=no" name="format-detection">
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha256-eSi1q2PG6J7g7ib17yAaWMcrr5GrtohYChqibrV7PBE=" crossorigin="anonymous">
    <link rel="stylesheet" href="${static!}/source/css/journal.min.css">
    <@global.head />
    <script src="${static!}/source/js/loadCSS.js"></script>

    <!-- Import prettify css  -->
    <#if settings.prettify_enable!false>
        <#if is_post?? || is_sheet??>
            <link rel="stylesheet" href="${static!}/source/css/prettify.min.css">
            <link rel="stylesheet" href="${static!}/source/css/prettify/${settings.prettify_theme!}.min.css">
        </#if>
    </#if>

    <script>
        loadCSS("https://fonts.googleapis.com/css?family=Lora|Montserrat|Fira+Mono|Material+Icons");
        <#--  (function (d) {
            var config = {
                    kitId: 'dwg1tuc',
                    scriptTimeout: 3000,
                    async: true
                },
                h = d.documentElement, t = setTimeout(function () {
                    h.className = h.className.replace(/\bwf-loading\b/g, "") + " wf-inactive";
                }, config.scriptTimeout), tk = d.createElement("script"), f = false,
                s = d.getElementsByTagName("script")[0], a;
            h.className += " wf-loading";
            tk.src = 'https://use.typekit.net/' + config.kitId + '.js';
            tk.async = true;
            tk.onload = tk.onreadystatechange = function () {
                a = this.readyState;
                if (f || a && a != "complete" && a != "loaded") return;
                f = true;
                clearTimeout(t);
                try {
                    Typekit.load(config)
                } catch (e) {
                }
            };
            s.parentNode.insertBefore(tk, s)
        })(document);  -->
    </script>
    <@global.statistics />

    <noscript>
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lora|Montserrat|Anonymous+Pro:400|Material+Icons"/>
    </noscript>
</head>
<body>
<div id="top"></div>
</#macro>
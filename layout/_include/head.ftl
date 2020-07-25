<#macro head title>
<!DOCTYPE html>
<html lang="zh">

<head>
    <title>${title!}</title>
    <meta charset="utf-8">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="//cdn.jsdelivr.net">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="${user.nickname!}">
    <meta name="description" content="${meta_description!}">
    <meta name="keywords" content="${meta_keywords!}">
    <meta name="renderer" content="webkit">
    <meta name="site" content="${blog_url!}" />

    <meta name="theme-name" content="${theme.name!}">
    <meta name="theme-version" content="${theme.version!}">
    <meta name="theme-repo" content="${theme.repo!}">
    <meta name="theme-author" content="fyang">

    <@global.head />

    <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${atom_url!}">
    <link href="https://cdn.jsdelivr.net/npm/tocbot@4.11.1/dist/tocbot.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" rel="stylesheet" type="text/css" media="screen">
    <link href="https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/css/prism.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/css/share.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/zoomify@0.2.5/dist/zoomify.min.css" rel="stylesheet" type="text/css">
    <link href="${theme_base!}/source/css/main.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon.ico">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon.ico">
    <link rel="alternate" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

    <@global.statistics />
    <#if settings.custom??>
    <style type="text/css">
        ${settings.custom!}
    </style>
    </#if>
    <style type="text/css">
        @font-face {
            font-family: Candyshop;
            src: url(https://cdn.jsdelivr.net/gh/feiyangbeyond/halo-theme-sagiri@sagiri-cdn/font/Candyshop.otf)
        }
    </style>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.0/dist/jquery.min.js"></script>
    <#if settings.pjax_enabled!false>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-pjax@2.0.1/jquery.pjax.min.js"></script>
    </#if>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <#if settings.music_enabled!false>
    <!-- require APlayer -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.css">
    <script src="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.js"></script>
    <!-- require MetingJS -->
    <script src="https://cdn.jsdelivr.net/npm/meting@2/dist/Meting.min.js"></script>
    </#if>

</head>
<body itemscope itemtype="http://schema.org/WebPage" lang="zh" class="theme-darling">

</#macro>

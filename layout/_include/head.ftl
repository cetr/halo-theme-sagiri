<#macro head title>
<!DOCTYPE html>
<html class="theme-next pisces" lang="zh">

<head>
    <title>${title!}</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="theme-color" content="#222">
    <meta name="author" content="${user.nickname!}">
    <meta name="description" content="${meta_description!}">
    <meta name="keywords" content="${meta_keywords!}">
    <meta name="renderer" content="webkit">

    <meta name="theme-name" content="${theme.name!}">
    <meta name="theme-version" content="${theme.version!}">
    <meta name="theme-repo" content="${theme.repo!}">
    <meta name="theme-author" content="ruby_woo">

    <@global.head />

    <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${atom_url!}">
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="${theme_base!}/source/css/main.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon.ico">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon.ico">
    <link rel="mask-icon" href="${theme_base!}/source/images/logo.svg?v=0.0.4" color="#222">
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
            src: url(${theme_base!}/source/font/Candyshop.otf)
        }
    </style>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
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
<body itemscope itemtype="http://schema.org/WebPage" lang="en" class="theme-darling">

</#macro>

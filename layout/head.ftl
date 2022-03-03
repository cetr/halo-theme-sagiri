<#macro head title>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>${title!}</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" contect="text/html;charset=utf-8">
    <meta http-equiv="Content-Language" contect="zh-CN">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="x-dns-prefetch-control" content="on">

    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="${user.nickname!}">
    <meta name="description" content="${meta_description!}">
    <meta name="keywords" content="${meta_keywords!}">
    <meta name="renderer" content="webkit">
    <meta name="site" content="${blog_url!}"/>
    <meta name="theme-name" content="${theme.name!}">
    <meta name="theme-version" content="${theme.version!}">
    <meta name="theme-repo" content="${theme.repo!}">
    <meta name="theme-author-url" content="blog.coor.top">

    <@global.head />

    <link rel="alternate" title="RSS" type="application/rss+xml" href="${rss_url!}">
    <link rel="alternate" title="ATOM" type="application/atom+xml" href="${atom_url!}">
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon.ico">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon.ico">

    <#include "css.ftl">

    <#if settings.custom??>
        <style>
            ${settings.custom!}
        </style>
    </#if>

    <script src="${theme_base!}/source/lib/jquery/jquery.min.js?v=${theme.version!}" type="text/javascript"></script>
    <script src="${theme_base!}/source/lib/vue/vue.min.js?v=${theme.version!}" type="text/javascript"></script>
</head>
<body>
</#macro>

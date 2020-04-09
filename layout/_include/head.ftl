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
    <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${atom_url!}">

    <meta content="telephone=no" name="format-detection">
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="#ffffff">

    <@global.head />
    <#--  <script src="${theme_base!}/source/js/loadCSS.js"></script>  -->
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet" type="text/css"/>
    <#--    <link href="//fonts.cat.net/css?family=Sigmar One:300,300italic,400,400italic,700,700italic&subset=latin,latin-ext" rel="stylesheet" type="text/css">-->
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.bootcss.com/social-share.js/1.0.9/css/share.min.css" rel="stylesheet" type="text/css"/>
    <#--    <link href="${theme_base!}/source/css/all.min.css" rel="stylesheet" type="text/css">-->
    <#--    <link href="${theme_base!}/source/css/share.min.css" rel="stylesheet" type="text/css">-->
    <link href="${theme_base!}/source/css/main.css" rel="stylesheet" type="text/css">
    <link rel="apple-touch-icon" sizes="180x180" href="${theme_base!}/source/images/apple-touch-icon-next.png?v=0.0.4">
    <link rel="icon" type="image/png" sizes="32x32" href="${theme_base!}/source/images/favicon.ico?v=0.0.4">
    <link rel="mask-icon" href="${theme_base!}/source/images/logo.svg?v=0.0.4" color="#222">
    <link rel="alternate" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

    <@global.statistics />
    <#if settings.custom??>
        <style>
            ${settings.custom}
        </style>
    </#if>

    <script type="text/javascript" id="hexo.configurations">
        var NexT = window.NexT || {};
        var CONFIG = {
            root: '/',
            scheme: 'Pisces',
            version: '0.0.4',
            sidebar: {
                "position": "right",
                "display": "always",
                "offset": 52,
                "b2t": false,
                "scrollpercent": false,
                "onmobile": false
            },
            fancybox: true,
            tabs: true,
            motion: {
                "enable": false,
                "async": false,
                "transition": {
                    "post_block": "fadeIn",
                    "post_header": "slideDownIn",
                    "post_body": "slideDownIn",
                    "coll_header": "slideLeftIn",
                    "sidebar": "slideUpIn"
                }
            },
            since: '2/9/2014 11:30:00',
            onlineAPI: '',
            site: {
                title: 'Hexo',
                subtitle: '',
                author: 'John Doe'
            },
            duoshuo: {
                userId: '0',
                author: 'Author'
            },
            algolia: {
                applicationID: '',
                apiKey: '',
                indexName: '',
                hits: {"per_page": 10},
                labels: {
                    "input_placeholder": "Search for Posts",
                    "hits_empty": "We didn't find any results for the search: ${query!}",
                    "hits_stats": "${hits!} results found in ${time!} ms"
                }
            },
            leancloud: {
                enable: false,
                appID: '',
                appKey: ''
            },
            favicon: {
                visibilitychange: true,
                narmal: '${theme_base}/source/images/favicon.ico',
                hidden: '${theme_base}/source/images/failure.ico',
                show_text: '(/≧▽≦/)咦！又好了！',
                hide_text: '(●—●)喔哟，崩溃啦！'
            }
        }
    </script>

    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body itemscope itemtype="http://schema.org/WebPage" lang="en" class="theme-darling">

</#macro>

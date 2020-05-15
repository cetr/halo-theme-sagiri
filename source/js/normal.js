document.querySelectorAll('pre code').forEach((block) => {
    hljs.highlightBlock(block);
});

$(function () {
    sagiri.affix();
    sagiri.lazyload('img.lazy');
});

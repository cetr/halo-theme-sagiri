<#assign pic_type = "${settings.back_to_top!}" />
<#assign pic_url = "${theme_base!}/source/images/scroll_1.png" />
<#if pic_type == "iron_man">
    <#assign pic_url = "${theme_base!}/source/images/scroll_2.png" />
</#if>
<div id="back-to-top" class="back-to-top" style="background: url(${pic_url})">
    <i class="fa fa-arrow-up"></i>
</div>

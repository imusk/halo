<footer class="footer mt-8 text-center pt-12 pb-12">
    <div class="m-0-auto container mx-auto flex flex-row lg:justify-between md:justify-center items-center grid lg:grid-cols-1 md:grid-cols-1">
        <#-- 社交信息 begin -->
        <div class="offsite-links flex flex-row justify-center flex-wrap">
            <#if settings.sina??>
                <a href="${settings.sina!}" class="circle pad-10" target="_blank" rel="noopener">
                    <span class="iconfont icon-weibo"> </span>
                </a>
            </#if>
            <#if settings.qq??>
                <a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" class="circle pad-10"
                   target="_blank" rel="noopener" title="QQ Chat">
                    <span class="iconfont icon-tencentqq"> </span>
                </a>
            </#if>
            <#if settings.telegram??>
                <a href="https://t.me/${settings.telegram!}" class="circle pad-10" target="_blank" rel="noopener"
                   title="Telegram Chat">
                    <span class="iconfont icon-telegram"> </span>
                </a>
            </#if>
            <#if settings.twitter??>
                <a href="${settings.twitter!}" class="circle pad-10" target="_blank" rel="noopener" title="Twitter">
                    <span class="iconfont icon-twitter"> </span>
                </a>
            </#if>
            <#if settings.github??>
                <a href="${settings.github!}" class="circle pad-10" target="_blank" rel="noopener" title="Github">
                    <span class="iconfont icon-github"> </span>
                </a>
            </#if>
            <#if settings.zhihu??>
                <a href="${settings.zhihu!}" class="circle pad-10" target="_blank" rel="noopener" title="知乎">
                    <span class="iconfont icon-zhihu-circle-fill"> </span>
                </a>
            </#if>
            <#if settings.mail??>
                <a href="mailto:${settings.mail!}" class="circle pad-10" target="_blank" rel="noopener" title="邮箱">
                    <span class="iconfont icon-email"> </span>
                </a>
            </#if>
            <#if settings.rss!true>
                <a href="${atom_url!}" class="circle pad-10" target="_blank" rel="noopener" title="RSS">
                    <span class="iconfont icon-rss"> </span>
                </a>
            </#if>
        </div>
        <#-- 社交信息 end -->

        <div class="site-info flex flex-col justify-center">
            <@global.footer />
            <#if settings.Icp??>
                <p><a href="http://beian.miit.gov.cn" target="_blank" class="text-xs">${settings.Icp!}</a></p>
            </#if>
            <#if settings.PublicSecurityRecord??>
                <p style="display: inline-block;background-image: url(${theme_base!}/assets/images/beian.png);background-repeat: no-repeat;background-position: top left;background-size: contain;padding-left: 20px;">
                    <a href="http://www.beian.gov.cn" target="_blank"
                       class="text-xs">${settings.PublicSecurityRecord!}</a>
                </p>
            </#if>

            <#if settings.TimeStatistics??>
                <p class="text-sm color-gray-700">
                    运行时间: <span id="span_dt_dt"></span>
                </p>
            </#if>

            <#if settings.visit_statistics!false>
                <p class="text-sm color-gray-700">
                    用户数 : <span id="busuanzi_container_site_uv"><span id="busuanzi_value_site_uv"></span></span>
                    ·
                    访问量: <span id="busuanzi_container_site_pv"><span id="busuanzi_value_site_pv"></span></span>
                </p>
            </#if>

            <!-- 请尊重作者，请务必保留版权 -->
            <p class="text-sm color-gray-700">
                Power By Halo · Theme By Xue
            </p>

        </div>
    </div>
</footer>

<#if settings.right_corner_circle!true>
    <#include "menu.ftl"/>
</#if>
<#if settings.Aplayer?? && settings.Aplayer != ''>
    <meting-js
        server="netease"
        type="playlist"
        fixed="true"
        id="${settings.Aplayer}">
    </meting-js>
</#if>

<#-- 搜索 -->
<form method="get" action="/search">
    <div class="hidden search-box" id="searchBox">
        <div class="search-ipt ipt ipt-w">
            <div class="ipt-ct ct-bg search-container" id="searchInput">
                <label class="sh-lab">
                    <input class="sh-ipt" maxlength="30" name="keyword" id="searchBoxInput" spellcheck="false" placeholder="Search" autofocus="autofocus" autocomplete="off">
                    <i class="sh-icon iconfont icon-search"></i>
                </label>
                <a class="sh-exit iconfont icon-exit" onClick="toggleSearchBox()"></a>
            </div>
        </div>
    </div>
</form>

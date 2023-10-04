<#assign s="Hi">
${s}<br>
<#assign a="hhh" b=["gggg","avhavj","swimming"]>
${a}----${b?join(",")}<br>
    <br>
<#assign code=60>
<#if code<60>
    渣渣。
    <#elseif code==60>
    勉强可以。
    <#elseif code gt 60 && code lt 80 >
    还不错。
    <#else>
    很不错哦
</#if>
<br>
<#list b as name>
    ${name}<br>
</#list>
<#if b??>
    <#list b as name>
        ${name}
    </#list>
</#if>
<br>
<#assign c=[]>
<#list c as name>
    ${name}
    <#else >
    没有内容<br>
</#list>
<#macro run>
    12345678@qq.com
</#macro>
<@run></@run><br>
<@run></@run><br>
<@run></@run><br>
<#macro UserByName uname>
    通过姓名查询信息-${uname}
</#macro>
<@UserByName uname="zhangsan">
</@UserByName><br>

<#macro UserByNameAge uname age>
    通过姓名年龄查询信息-${uname}-${age}
</#macro>
<@UserByNameAge uname="zhangsan" age=18>
</@UserByNameAge><br>
<#macro xfb>
    <#list 1..9 as i>
        <#list 1..i as j>
            ${i}*${j}=${i*j}&nbsp;
        </#list><br>
    </#list>
</#macro>
<@xfb></@xfb>
<#--动态变化-->
<#macro xfb1 num>
    <#list 1..num as i>
        <#list 1..i as j>
            ${i}*${j}=${i*j}&nbsp;
        </#list><br>
    </#list>
</#macro>
<@xfb1 num=5></@xfb1>
<#--nested 占位指令-->
<#macro test>
    这是一段文本！
    <#nested>
    <#nested>
</#macro>
<@test><h4>这是文本后面的内容！</h4></@test>
<#--import 导入指令-->
<#-- 导入命名空间 -->
<#import "commons.ftl" as common>
<#-- 使用命名空间中的指令 -->
<@common.xfb2></@common.xfb2>
<#--include 包含指令-->
<#--包含指令(引入其他页面文件) include-->
<#--html文件-->
<#include "text.html">
<#--freemarker文件-->
<#include "text.ftl">
<#--text文件-->
<#include "text.txt">

































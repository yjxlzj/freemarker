<h4>数据类型</h4>

<h5>布尔型</h5>
${flag?c} <br>
${flag?string} <br>
${flag?string("yes","no")}<br>
${flag?string("肖战","魏无羡")}<br>
<h5>日期类型</h5>
${date?date}<br>
${date?time}<br>
${date?datetime}<br>
${date?string("yyyy-MM-dd HH-mm-ss")}<br>
<h5>字符串</h5>
${m?substring(0,2)}<br>
${m?uncap_first}<br>
${m1?cap_first}<br>
${m?lower_case}<br>
${m1?upper_case}<br>
${m?length}<br>
${m?starts_with("H")?string}<br>
${m1?ends_with("g")?string}<br>
${m1?index_of("w")}<br>
${m?trim}<br>
${m1?replace("mm","aa")}<br>
<h5>空值</h5>
${flag1!}

${(flag1??)?string}
<h5>数值</h5>
${sal}
${id?c}<br>
${sal?c}<br>
${avg?c}<br>
${avg?string["0.##"]}<br>
${avg?string.currency}<br>
<h5>序列类型</h5>
<h6>数组</h6>
<#list strings as str>
    ${str}<br>
</#list>
${strings?size}<br>
${strings?first}<br>
${strings?last}<br>
<h6>list</h6>
<#list list as li>
    ${li}<br>
</#list>
size:${list?size}<br>
reverse:<#list list?reverse as li>
${li}<br>
</#list>
sort:<#list list?sort as li>
${li}<br>
</#list>
<#--降序-->
降序：<#list list?sort?reverse as li>
    ${li}<br>
</#list>
<h6>javabean</h6>
<#list ulist as u>
    年龄：${u.age}<br>
    姓名：${u.name}<br>
    爱好：${u.hobby}<br>
</#list>
按照指定字段<#list ulist?sort_by("name") as u>
    姓名：${u.name}<br>
</#list>
<hr>
<h6>hash</h6>
<#list map?keys as m>
    ${m}----${map[m]}<br>
</#list>
<hr>
<#list map?values as v>
    ${v}<br>
</#list>












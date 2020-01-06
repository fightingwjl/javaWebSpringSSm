<%--
  Created by IntelliJ IDEA.
  User: 亮亮
  Date: 2020/1/6
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>sc.chinaz.com</title>
    <meta name="keywords" content="Creative Studio, XHTML CSS template, free download, web design" />
    <meta name="description" content="Creative Studio is a standard compliant XHTML CSS template from templatemo.com" />
    <link href="/day03_ssm_war/css/templatemo_styleTwo.css" rel="stylesheet" type="text/css" />

    <style>
        .div-a{ float:left;width:20%;}
        .div-d{ float:left;clear: both}
    </style>

</head>
<body>
<div id="templatemo_container">
    <div id="bulb"></div>
    <div id="templatemo_site_title_bar">
        <div id="site_title">
            <h1>
                <a target="_parent">Welcoming</a>
                <span>Here is the information page</span>
            </h1>
        </div>
    </div> <!-- templatemo_site_title_bar -->

    <div id="templatemo_menu">
        <ul>
            <li><a href="toMoreLogin" class="current fast">Account</a></li>
            <li><a href="toMoreStaff">Staff</a></li>
            <li><a href="toMoreWage">Wage</a></li>
            <li><a href="toMoreCheck" target="_parent">Check</a></li>
            <li><a href="toMoreDepart">Department</a></li>
        </ul>
    </div> <!-- end of menu -->

    <div id="templatemo_content">

        <div class="section_w670">

            <h2>Check Message</h2>
            <div class="div-a">工号：<br/>
                <c:forEach   items="${MCheck}" var="listMoreCheck">
                    ${listMoreCheck.sno} <br/>
                </c:forEach>
            </div>
            <div class="div-a">全勤天数：<br/>
                <c:forEach   items="${MCheck}" var="listMoreCheck">
                    ${listMoreCheck.cregular} <br/>
                </c:forEach>
            </div>
            <div class="div-a">缺勤天数：<br/>
                <c:forEach   items="${MCheck}" var="listMoreCheck">
                    ${listMoreCheck.cabsence} <br/>
                </c:forEach>
            </div>
            <div class="div-a">迟到天数：<br/>
                <c:forEach   items="${MCheck}" var="listMoreCheck">
                    ${listMoreCheck.ctardy} <br/>
                </c:forEach>
            </div>
            <div class="div-d">
                <br/><br/><br/>
                <a href="findAll" style="font-size: 15px">点击回到管理页面</a>
            </div>
        </div>


        <div class="cleaner"></div>
    </div> <!-- end of templatemo_content -->


    <div id="content_bottom"></div>
    <div class="cleaner"></div>
</div> <!-- end of container -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div></body>
</html>
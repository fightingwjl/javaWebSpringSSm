<%--
  Created by IntelliJ IDEA.
  User: 亮亮
  Date: 2020/1/1
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>Wooden Template, Portfolio Website, Free CSS Template此模板 来自站长素材模板sc.chinaz.com</title>
    <meta name="keywords" content="Wooden Template, Portfolio Website, Personal, Free CSS Template, XHTML" />
    <meta name="description" content="Wooden Template, Portfolio Website, Free CSS Template from cssk8.com" />
    <link href="/day03_ssm_war/css/templatemo_style.css" rel="stylesheet" type="text/css" />

    <meta http-equiv="Content-Language" content="en-us" />
    <meta name="author" content="Niall Doherty" />
    <script src="/day03_ssm_war/js/jquery-1.2.1.pack.js" type="text/javascript"></script>
    <script src="/day03_ssm_war/js/jquery-easing.1.2.pack.js" type="text/javascript"></script>
    <script src="/day03_ssm_war/js/jquery-easing-compatibility.1.2.pack.js" type="text/javascript"></script>
    <script src="/day03_ssm_war/js/coda-slider.1.1.1.pack.js" type="text/javascript"></script>
    <!--
    The CSS. You can of course have this in an external .css file if you like.
    Please note that not all these styles may be necessary for your use of Coda-Slider, so feel free to take out what you don't need.
    -->
    <!-- Initialize each slider on the page. Each slider must have a unique id -->
    <script type="text/javascript">
        jQuery(window).bind("load", function() {
            jQuery("div#slider1").codaSlider()
            // jQuery("div#slider2").codaSlider()
            // etc, etc. Beware of cross-linking difficulties if using multiple sliders on one page.
        });
    </script>

    <script type="text/javascript">
        function login1() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateMsg" ,//url
                data: $('#form1').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function login2() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "save1" ,//url
                data: $('#form2').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function login3() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "deleteMsg" ,//url
                data: $('#form3').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginS1() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateSMsg" ,//url
                data: $('#formS1').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginS2() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "Staff" ,//url
                data: $('#formS2').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginS3() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "deleteSMsg" ,//url
                data: $('#formS3').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

<%--    工资的处理--%>
    <script type="text/javascript">
        function loginW1() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateWage" ,//url
                data: $('#formW1').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginW2() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "saveWage" ,//url
                data: $('#formW2').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginW3() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "deleteWage" ,//url
                data: $('#formW3').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

<%--    考勤的处理--%>
    <script type="text/javascript">
        function loginC1() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateCheck1" ,//url
                data: $('#formC1').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginC2() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "saveCheck1" ,//url
                data: $('#formC2').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginC3() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "deleteCheck1" ,//url
                data: $('#formC3').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

<%--部门信息的处理--%>
    <script type="text/javascript">
        function loginD1() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateDepart" ,//url
                data: $('#formD1').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginD2() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "saveDepart" ,//url
                data: $('#formD2').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function loginD3() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "deleteDepart" ,//url
                data: $('#formD3').serialize(),
                success: function (result) {
                    alert("操作成功了呢");
                },
                error : function() {
                    alert("错误的操作！");
                }
            });
        }
    </script>

    <%--    并排的两列数据显示--%>
    <style>
    .div-a{ float:left;width:10%;}
    .div-b{ float:left;width:12.5%;}
    .div-h{ float:left;width:12.5%;}
    .div-i{ float:left;width:12.5%;}
    .div-c{ float:left;width:50%;}
    .div-c1{ float:left;width:40%;}
    .div-c2{ float:left;width:40%;}
    .div-c3{ float:left;width:20%;}
    .div-d{ float:left;clear: both; width: 100%}
    .div-page{ float:left;width:50%;}
</style>

    <style>
        .div-aStaff{ float:left;width:6.1%;}
        .div-bStaff{ float:left;width:45%;}
        .div-jStaff{ float:left;width:20%;}
        .div-j1Staff{ float:left;width:40%;}
        .div-j2Staff{ float:left;width:40%;}
        .div-j3Staff{ float:left;width:20%;}
    </style>
</head>
<body>


<div id="templatemo_site_title_bar_wrapper">

    <div id="templatemo_site_title_bar">

        <div id="site_title">
            <h1><a href="http://sc.chinaz.com" target="_parent">
                人事管理系统
            </a></h1>
        </div>

        <div id="twitter"><a href="#"></a></div>

    </div> <!-- end of templatemo_site_title_bar -->
</div> <!-- end of templatemo_site_title_bar_wrapper -->


<div id="templatemo_content_wrapper">

    <div id="templatemo_content">

        <!-- start of slider -->

        <div class="slider-wrap">
            <div id="slider1" class="csw">
                <div class="panelContainer">
                    <div class="panel" title="Account Message">
                        <div class="wrapper">
                            <h2 style="float: left; width: 50%; text-align: center" >Account Message</h2>
                            <h2 style="float: left; width: 50% ;text-align: center" >Modify Message</h2>
                                <div class="div-a">账户：<br/>
                                    <c:forEach  end="9" items="${list}" var="listlogin">
                                        ${listlogin.sno} <br/>
                                    </c:forEach>
                                </div>
                                <div  class="div-b">密码:<br/>
                                    <c:forEach  end="9"  items="${list}" var="listlogin">
                                        ${listlogin.password} <br/>
                                    </c:forEach>
                                </div>
                                <div class="div-h">账户：<br/>
                                    <c:forEach  begin="10" items="${list}" var="listlogin">
                                        ${listlogin.sno} <br/>
                                    </c:forEach>
                                </div>
                                <div  class="div-i">密码：<br/>
                                    <c:forEach  begin="10"  items="${list}" var="listlogin">
                                        ${listlogin.password} <br/>
                                    </c:forEach>
                                </div>
                            <div class="div-c">
                                <form id="form1" οnsubmit="return true" action="##" method="post">
                                    <h3>修改信息</h3>
                                    <div class="div-c1">
                                    <label >员工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                    <label >密码:</label> <input type="text"  style="width: 80px" name="password" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                    <input style="font-weight: bold;"  type="button" onclick="login1()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="form2" οnsubmit="return true" action="##" method="post">
                                    <h3>添加账户</h3>
                                    <div class="div-c1">
                                        <label >员工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >密码:</label> <input type="text"  style="width: 80px" name="password" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="login2()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="form3" οnsubmit="return true" action="##" method="post">
                                    <h3>删除账户</h3>
                                    <div class="div-c1">
                                        <label >员工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >密码:</label> <input type="text"  style="width: 80px" name="password" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="login3()"  value=" 确认 " />
                                    </div>
                                </form>
                            </div>
                                <div class="div-d"  >
                                    <c:forEach begin="0" end="4">
                                        <br/>
                                    </c:forEach>
                                        <a href="toMoreLogin" style="font-size: 15px">点击查看更多</a><br/>
                                        <a style="float: left; width: 50%; font-size: 15px" href="#2" class="cross-link" title="Go to Page 2">Next Page &#187;</a>
                                        <a href="toAdvice"  style="float: left; width: 50%;font-size: 15px">点击这里可以去员工意见页面</a>
                            </div>

                        </div>
                    </div>
                    <div class="panel" title="staff Message">
                        <div class="wrapper">
                            <h2 style="float: left; width: 60%; text-align: center" >Staff Message</h2>
                            <h2 style="float: left; width: 40% ;text-align: center" >Modify Message</h2>
                            <div class="div-aStaff">账号：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.sno} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">姓名：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.sname} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">性别：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.ssex} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">年龄：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.sage} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">学历：<br/>
                            <c:forEach  end="11" items="${list1}" var="liststaff">
                                ${liststaff.sedu} <br/>
                            </c:forEach>
                            </div>
                            <div class="div-aStaff">电话：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.stel} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">邮箱：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.semail} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">职位：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.sposition} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-aStaff">部门：<br/>
                                <c:forEach  end="11" items="${list1}" var="liststaff">
                                    ${liststaff.dno} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-bStaff">
                                <form id="formS1" οnsubmit="return true" action="##" method="post">
                                    <h3>修改信息</h3>
                                    <div class="div-j1Staff">
                                        <label >员工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-j2Staff">
                                        <label >新姓名:</label> <input type="text"  style="width: 80px" name="Sname" class="required input_field" />
                                    </div>
                                    <div class="div-j3Staff">
                                        <input style="font-weight: bold;"  type="button" onclick="loginS1()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formS3" οnsubmit="return true" action="##" method="post">
                                    <h3>删除账户</h3>
                                    <div class="div-c1">
                                        <label >员工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><br/><a href="toMoreStaff" style="font-size: 15px">点击查看更多</a>
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="loginS3()"  value=" 确认 " />
                                    </div>
                                </form>
                            </div>
                            <div class="div-d"  >
                                <form id="formS2" οnsubmit="return true" action="##" method="post">
                                    <h3>添加员工</h3>
                                    <div class="div-jStaff">
                                        <label >工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >姓名:</label> <input type="text"  style="width: 80px" name="Sname" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >性别:</label> <input type="text" style="width: 80px" name="Ssex" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >年龄:</label> <input type="text" style="width: 80px" name="Sage" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >学历:</label> <input type="text" style="width: 80px" name="Sedu" class="required input_field" />
                                    </div>
                                    <br/> <br/>
                                    <div class="div-jStaff">
                                        <label >电话:</label> <input type="text"  style="width: 80px" name="Stel" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >邮箱:</label> <input type="text"  style="width: 80px" name="Semail" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >职位:</label> <input type="text"  style="width: 80px" name="Sposition" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff">
                                        <label >部门:</label> <input type="text"  style="width: 80px" name="Dno" class="required input_field" />
                                    </div>
                                    <div class="div-jStaff" style="text-align: center">
                                        <input style="font-weight: bold; text-align: center"  type="button" onclick="loginS2()"  value=" 确认 " />
                                    </div>
                                    <c:forEach begin="0" end="1">
                                            <br/>
                                    </c:forEach>
                                    <div class="div-page">
                                        <p><a s href="#1" class="cross-link" title="Go to Page 1">&#171; Previous Page</a> | <a href="#3" class="cross-link" title="Go to Page 3">Next Page &#187;</a></p>
                                    </div>
                                    <div class="div-page">
                                        <a href="toAdvice"  >点击这里可以去员工意见页面</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Wage Message">
                        <div class="wrapper">
                            <h2 style="float: left; width: 50%; text-align: center" >Wage Message</h2>
                            <h2 style="float: left; width: 50% ;text-align: center" >Modify Wage</h2>
                            <div class="div-a">工号：<br/>
                                <c:forEach  end="11" items="${list2}" var="listwage">
                                    ${listwage.sno} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">基本工资：<br/>
                                <c:forEach  end="11" items="${list2}" var="listwage">
                                    ${listwage.wbasic} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">扣除工资：<br/>
                                <c:forEach  end="11" items="${list2}" var="listwage">
                                    ${listwage.wpenalty} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">实际工资：<br/>
                                <c:forEach  end="11" items="${list2}" var="listwage">
                                    ${listwage.wactual} <br/>
                                </c:forEach>
                            </div>

                            <div class="div-c">
                                <form id="formW1" οnsubmit="return true" action="##" method="post">
                                    <h3>修改账户工资信息</h3>
                                    <div class="div-c1">
                                        <label >工&emsp;&emsp;号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >扣除工资:</label> <input type="text" style="width: 80px" name="Wpenalty" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >基本工资:</label> <input type="text"  style="width: 80px" name="Wbasic" class="required input_field" />
                                        <br/><br/><label >实际工资:</label> <input type="text"  style="width: 80px" name="Wactual" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <br/><br/><input style="font-weight: bold;"  type="button" onclick="loginW1()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formW2" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>添加账户工资信息</h3>
                                    <div class="div-c1">
                                        <label >工&emsp;&emsp;号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >扣除工资:</label> <input type="text" style="width: 80px" name="Wpenalty" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >基本工资:</label> <input type="text"  style="width: 80px" name="Wbasic" class="required input_field" />
                                        <br/><br/><label >实际工资:</label> <input type="text"  style="width: 80px" name="Wactual" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <br/><br/><input style="font-weight: bold;"  type="button" onclick="loginW2()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formW3" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>删除账户工资信息</h3>
                                    <div class="div-c1">
                                        <label >工&emsp;&emsp;号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="loginW3()"  value=" 确认 " />
                                    </div>
                                </form>
                            </div>
                            <div class="div-d"  >
                                <a href="toMoreWage" style="font-size: 15px">点击查看更多</a><br/>
<%--                                <c:forEach begin="0" end="1">--%>
<%--                                    <br/>--%>
<%--                                </c:forEach>--%>
                                <div class="div-page">
                                    <p><a s href="#2" class="cross-link" title="Go to Page 2">&#171; Previous Page</a> | <a href="#4" class="cross-link" title="Go to Page 4">Next Page &#187;</a></p>
                                </div>
                                <div class="div-page">
                                    <a href="toAdvice"  >点击这里可以去员工意见页面</a>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="panel" title="Check">
                        <div class="wrapper">
                            <h2 style="float: left; width: 50%; text-align: center" >Check Message</h2>
                            <h2 style="float: left; width: 50% ;text-align: center" >Modify Check</h2>
                            <div class="div-a">账号：<br/>
                                <c:forEach  end="11" items="${list3}" var="listcheck">
                                    ${listcheck.sno} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">全勤天数：<br/>
                                <c:forEach  end="11" items="${list3}" var="listcheck">
                                    ${listcheck.cregular} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">缺勤天数：<br/>
                                <c:forEach  end="11" items="${list3}" var="listcheck">
                                    ${listcheck.cabsence} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">迟到天数：<br/>
                                <c:forEach  end="11" items="${list3}" var="listcheck">
                                    ${listcheck.ctardy} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-c">
                                <form id="formC1" οnsubmit="return true" action="##" method="post">
                                    <h3>修改账户考勤信息</h3>
                                    <div class="div-c1">
                                        <label >工&emsp;&emsp;号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >全勤天数:</label> <input type="text" style="width: 80px" name="Cregular" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >缺勤天数:</label> <input type="text"  style="width: 80px" name="Cabsence" class="required input_field" />
                                        <br/><br/><label >迟到天数:</label> <input type="text"  style="width: 80px" name="Ctardy" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <br/><br/> <input style="font-weight: bold;"  type="button" onclick="loginC1()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formC2" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>添加账户考勤信息</h3>
                                    <div class="div-c1">
                                        <label >工&emsp;&emsp;号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >全勤天数:</label> <input type="text" style="width: 80px" name="Cregular" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >缺勤天数:</label> <input type="text"  style="width: 80px" name="Cabsence" class="required input_field" />
                                        <br/><br/><label >迟到天数:</label> <input type="text"  style="width: 80px" name="Ctardy" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <br/><br/><input style="font-weight: bold;"  type="button" onclick="loginC2()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formC3" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>删除账户考勤信息</h3>
                                    <div class="div-c1">
                                        <label >工号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="loginC3()"  value=" 确认 " />
                                    </div>
                                </form>
                            </div>
                            <div class="div-d"  >
                                <a href="toMoreCheck" style="font-size: 15px">点击查看更多</a><br/>
<%--                                <c:forEach begin="0" end="1">--%>
<%--                                    <br/>--%>
<%--                                </c:forEach>--%>
                                <div class="div-page">
                                    <p><a s href="#3" class="cross-link" title="Go to Page 3">&#171; Previous Page</a> | <a href="#5" class="cross-link" title="Go to Page 5">Next Page &#187;</a></p>
                                </div>
                                <div class="div-page">
                                    <a href="toAdvice"  >点击这里可以去员工意见页面</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel" title="Department">
                        <div class="wrapper">
                            <h2 style="float: left; width: 50%; text-align: center" >Department Message</h2>
                            <h2 style="float: left; width: 50% ;text-align: center" >Modify Department</h2>
                            <div class="div-a">部门号：<br/>
                                <c:forEach  end="11" items="${list4}" var="listdepart">
                                    ${listdepart.dno} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">部门名称：<br/>
                                <c:forEach  end="11" items="${list4}" var="listdepart">
                                    ${listdepart.dname} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">经理名：<br/>
                                <c:forEach  end="11" items="${list4}" var="listdepart">
                                    ${listdepart.sname} <br/>
                                </c:forEach>
                            </div>
                            <div class="div-a">经理号：<br/>
                                <c:forEach  end="11" items="${list4}" var="listdepart">
                                    ${listdepart.sno} <br/>
                                </c:forEach>
                            </div>

                            <div class="div-c">
                                <form id="formD1" οnsubmit="return true" action="##" method="post">
                                    <h3>修改部门信息</h3>
                                    <div class="div-c1">
                                       <label >经理名称:</label> <input type="text" style="width: 80px" name="Sname" class="required input_field" />
                                       <br/><br/><label >部门名称:</label> <input type="text"  style="width: 80px" name="Dname" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >经理号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >部门号:</label> <input type="text"  style="width: 80px" name="Dno" class="required input_field" />

                                    </div>
                                    <div class="div-c3">
                                        <br/><br/><input style="font-weight: bold;"  type="button" onclick="loginD1()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formD2" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>添加部门</h3>
                                    <div class="div-c1">
                                        <label >经理号:</label> <input type="text" style="width: 80px" name="Sno" class="required input_field" />
                                        <br/><br/><label >部门号:</label> <input type="text"  style="width: 80px" name="Dno" class="required input_field" />
                                    </div>
                                    <div class="div-c2">
                                        <label >经理名称:</label> <input type="text" style="width: 80px" name="Sname" class="required input_field" />
                                        <br/><br/><label >部门名称:</label> <input type="text"  style="width: 80px" name="Dname" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <br/><br/><input style="font-weight: bold;"  type="button" onclick="loginD2()"  value=" 确认 " />
                                    </div>
                                </form>
                                <br/><br/>
                                <form id="formD3" οnsubmit="return true" action="##" method="post">
                                    <br/><br/><h3>删除部门</h3>
                                    <div class="div-c1">
                                        <label >部门号:</label> <input type="text" style="width: 80px" name="Dno" class="required input_field" />
                                    </div>
                                    <div class="div-c3">
                                        <input style="font-weight: bold;"  type="button" onclick="loginD3()"  value=" 确认 " />
                                    </div>
                                </form>
                            </div>
                            <div class="div-d"  >
                                <a href="toMoreDepart" style="font-size: 15px">点击查看更多</a><br/>
<%--                                <c:forEach begin="0" end="1">--%>
<%--                                    <br/>--%>
<%--                                </c:forEach>--%>
                                <div class="div-page">
                                    <p><a s href="#4" class="cross-link" title="Go to Page 4">&#171; Previous Page</a>
                                </div>
                                <div class="div-page">
                                    <a href="toAdvice"  >点击这里可以去员工意见页面</a>
                                </div>
                                <br/><br/>
                                <a href="toLogin" style="font-size: 15px">请点击回到登录页面</a>
                            </div>
                        </div>
                    </div>

                </div><!-- .panelContainer -->
            </div><!-- #slider1 -->
        </div><!-- .slider-wrap -->

        <p id="cross-links" style="width:0px; height: 0px; font-size:0; overflow: hidden;">
            Same-page cross-link controls:<br />
            <a href="#1" class="cross-link">Page 1</a> | <a href="#2" class="cross-link">Page 2</a> | <a href="#3" class="cross-link">Page 3</a> | <a href="#4" class="cross-link">Page 4</a> | <a href="#5" class="cross-link">Page 5</a>
        </p>

        <!-- end of slider -->
    </div>
    <!-- end of templatemo_content -->
</div> <!-- end of templatemo_content_wrapper -->

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">
        “客户第一！”   <a href="#">“用脑、用心去建造！”</a>
        <div class="cleaner_h10"></div>
        <a href="http://sc.chinaz.com" target="_parent">“放眼世界，努力改进经营管理，发明建筑新技术！” </a>
    </div> <!-- end of templatemo_footer -->
</div> <!-- end of templatemo_footer_wrapper -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>  </body>
</html>

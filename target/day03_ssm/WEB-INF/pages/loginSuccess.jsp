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
                        alert("SUCCESS");
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
    </script>

    <script type="text/javascript">
        function upAd() {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "updateAd" ,//url
                data: $('#formAd').serialize(),
                success: function (result) {
                    alert("SUCCESS");
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
    </script>



<%--    并排的两列数据显示--%>
    <style>
        .div-a{ float:left;width:10%;}
        .div-b{ float:left;width:10%;}
        .div-h{ float:left;width:10%;}
        .div-i{ float:left;width:10%;}
        .div-3page{ float:left;width:40%;}
        .div-3login{ float:left;width:40%;}
        .div-d{ float:left;clear: both}
    </style>
</head>
<body>


<div id="templatemo_site_title_bar_wrapper">

    <div id="templatemo_site_title_bar">

        <div id="site_title">
            <h1><a href="http://sc.chinaz.com" target="_parent">
                Wooden
                <span>free css template</span>
            </a></h1>
        </div>

        <div id="twitter"><a href="#">Follow Me</a></div>

    </div> <!-- end of templatemo_site_title_bar -->
</div> <!-- end of templatemo_site_title_bar_wrapper -->


<div id="templatemo_content_wrapper">

    <div id="templatemo_content">

        <!-- start of slider -->

        <div class="slider-wrap">
            <div id="slider1" class="csw">
                <div class="panelContainer">

                    <div class="panel" title="Modify">
                        <div class="wrapper">

                            <h2>Modify your password!</h2><br/>
                            <form id="form1" οnsubmit="return true" action="##" method="post">
                                <label >新密码:</label> <input type="text" name="password" class="required input_field" />
                                <input style="font-weight: bold;"  type="button" onclick="login1()"  value=" 修改 " />
                            </form>
                            <p><a href="#2" class="cross-link" title="Go to Page 2">Next Page &#187;</a></p>
                            <a href="toLogin" style="font-size: 15px">点击这里可以回到登录页面</a>
                        </div>
                    </div>
                    <div class="panel" title="staffMessage">
                        <div class="wrapper">

                            <h2>这里查看您的基本信息</h2>
                            <form action="staff" method="post">
                                您的工号：<input type="text" name="Sno" />  <input type="submit" value="查询" />
                            </form>
                            <br/><br/>
                            <div>
                                <form method="post" name="contact" action="">
                                    您的工号为：${staff.sno}
                                    <div class="cleaner_h20">
                                    您的姓名为：${staff.sname}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的性别为：${staff.ssex}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的年龄为：${staff.sage}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的学历为：${staff.sedu}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的联系方式为：${staff.stel}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的邮箱为：${staff.semail}
                                    </div>
                                    <div class="cleaner_h20">
                                    您的职位为：${staff.sposition}
                                    </div>
                                    <div class="cleaner_h20">
                                    您所在的部门为：${staff.dno}
                                    </div>
                                </form>
                            </div>
                            <div class="div-d"  >
                                <c:forEach begin="0" end="1">
                                   <br/>
                                </c:forEach>
                            <p><a s href="#1" class="cross-link" title="Go to Page 1">&#171; Previous Page</a> | <a href="#3" class="cross-link" title="Go to Page 3">Next Page &#187;</a></p>
                            <a href="toLogin" style="font-size: 15px">点击这里可以回到登录页面</a>
                            </div>
                        </div>
                    </div>

                    <div class="panel" title="wages">
                        <div class="wrapper">

                            <h2>这里可以查看您的收支情况</h2>
                            <form action="wage" method="post">
                                工号：<input type="text" name="Sno" />  <input type="submit" value="查询" />
                            </form>
                            <div class="portfolio_box margin_r50">
                                <h3>Original wages</h3>
                                <div class="port_img">
                                    <img src="/day03_ssm_war/images/templatemo_image_02.jpg" alt="project 1" />
                                </div>
                                <div class="port_content">
                                    <div style="font-size: 15px; color: #e4bd33" >
                                     您上个月的基础工资为：<br/> ${wage.wbasic}

                                    </div>

                                    <div class="cleaner"></div>
                                </div>
                            </div>

                            <div class="portfolio_box margin_r50">

                                <h3>Deduction of wages</h3>

                                <div class="port_img">
                                    <img src="/day03_ssm_war/images/templatemo_image_03.jpg" alt="project 2" />
                                </div>

                                <div class="port_content">
                                    <div style="font-size: 15px; color: #e4bd33" >
                                        您上个月被扣除的工资为：<br/>${wage.wpenalty}
                                    </div>
                                </div>

                            </div>

                            <div class="portfolio_box">

                                <h3>Actual wages</h3>

                                <div class="port_img">
                                    <img src="/day03_ssm_war/images/templatemo_image_04.jpg" alt="project 3" />
                                </div>

                                <div class="port_content">
                                    <div style="font-size: 15px; color: #e4bd33" >
                                        您上个月实际所得的工资为：<br/> ${wage.wactual}
                                    </div>
                                </div>

                                <div class="cleaner"></div>

                            </div>

                            <div class="cleaner_h10" style="height: 100px"></div>
                            <div class="div-3page" style="height: 100px">
                                <a href="#2"  class="cross-link" title="Go to Page 2">&#171; Previous Page</a> | <a href="#4"  class="cross-link" title="Go to Page 4">Next Page &#187;</a>
                            </div>
                            <div class="div-3login" style="height: 100px">
                                <a href="toLogin"  >点击这里可以回到登录页面</a>
                            </div>

                        </div>
                    </div>
                    <div class="panel" title="Check">
                        <div class="wrapper">

                            <h2>您的考勤情况（请输入您的工号进行查询）</h2>
                            <form action="check1" method="post">
                                您的工号：<input type="text" name="Sno" />  <input type="submit" value="查询" />
                            </form>
                            <div class="image_wrapper fl_image">
                                <img src="/day03_ssm_war/images/templatemo_image_05.jpg" alt="image 1"/>
                            </div>
                            <div class="cleaner_h30">
                                您上个月的全勤天数为： ${check1.cregular}
                            </div>
                            <div class="cleaner_h30">
                                您上个月的缺勤天数： ${check1.cabsence}
                            </div>
                            <div class="cleaner_h30">
                                您上个月的迟到天数为：${check1.ctardy}
                            </div>
                            <div class="cleaner_h30">
                                <a href="#3" class="cross-link" title="Go to Page 3">&#171; Previous Page</a> | <a href="#5" class="cross-link" title="Go to Page 5">Next Page &#187;</a>
                                <a href="toLogin"  >点击这里可以回到登录页面</a>
                            </div>
                            <div class="image_wrapper2 fr_image">
                                <img src="/day03_ssm_war/images/templatemo_image_06.jpg" alt="image 2"/>
                            </div>
                            </div>
                    </div>
                    <div class="panel" title="Depart">
                        <div class="wrapper">

                            <h2>这里可以查看您所属的部门信息</h2>
                            <form action="depart" method="post">
                                您的工号：<input type="text" name="Sno" />  <input type="submit" value="查询" />
                            </form>
                            <div id="contact_form">

                                <form method="post" name="contact" action="">

                                    您所属的部门号为：${depart.dno}
                                   <div class="cleaner_h10"></div>

                                    您所属的部门名称为：${depart.dname}
                                    <div class="cleaner_h10"></div>

                                    您所属的部门经理号为：${depart.sno}
                                    <div class="cleaner_h10"></div>

                                   您所属的部门经理姓名为：${depart.sname}
                                    <div class="cleaner_h10"></div>
                                    <br/>
                                </form>
                                    <h3>对公司的意见</h3>
                                    <form id="formAd" οnsubmit="return true" action="##" method="post">
                                        <label for="text">Advice:</label> <textarea id="text" name="advice1" rows="0" cols="0" class="required"></textarea>
                                        <div class="cleaner_h10"></div>
                                        <input style="font-weight: bold;" type="button"  onclick="upAd()" class="submit_btn" name="submit" id="submit" value=" Send " />
                                        <input style="font-weight: bold;" type="reset" class="submit_btn" name="reset" id="reset" value=" Reset " />
                                    </form>

                            </div>

                            <div class="address_info">
                                <h3>Corporate Manifesto(公司宣言)</h3>
                                 我们永远以一颗热情、善良的心并肩同行，<br/>
                                我们的团队有共同的远景目标、信仰与追求，<br />
                                对理想与美好生活的共同渴望使我们彼此关爱,<br />
                                共同成长。诚信、奉献，我们的信念永远不变。<br/><br/>
                                <p><a href="#4" class="cross-link" title="Go to Page 4">&#171; Previous Page</a></p>
                                <a href="toLogin"  >点击这里可以回到登录页面</a>
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
        Copyright 漏 2024 <a href="#">Your Company Name</a>
        <div class="cleaner_h10"></div>
        Designed by <a href="http://sc.chinaz.com" target="_parent">cssk8</a>
    </div> <!-- end of templatemo_footer -->
</div> <!-- end of templatemo_footer_wrapper -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>  </body>
</html>

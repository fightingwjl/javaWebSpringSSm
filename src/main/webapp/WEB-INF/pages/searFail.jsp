<%--
  Created by IntelliJ IDEA.
  User: 亮亮
  Date: 2020/1/1
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                    <div class="panel" title="loginFail">
                        <div class="wrapper">

                            <h2>您的输入有误，请正确的输入您的工号!</h2><br/>
                            <a href="javascript:history.back(-1)" style="font-size: 20px; color: red">点击返回上一页</a>
                            <br/> <br/> <br/> <br/>
                            <a href="toLogin" style="font-size: 15px ">点击进里可以返回到登录页面</a>

                        </div>
                    </div>
                </div>
            </div>
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

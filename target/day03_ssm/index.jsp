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
    <title>人事管理系统</title>
    <meta name="keywords" content="Wooden Template, Portfolio Website, Personal, Free CSS Template, XHTML" />
    <meta name="description" content="Wooden Template, Portfolio Website, Free CSS Template from cssk8.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

    <meta http-equiv="Content-Language" content="en-us" />
    <meta name="author" content="Niall Doherty" />
    <script src="js/jquery-1.2.1.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing.1.2.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing-compatibility.1.2.pack.js" type="text/javascript"></script>
    <script src="js/coda-slider.1.1.1.pack.js" type="text/javascript"></script>
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
                    <div class="panel" title="Login">
                        <div class="wrapper">
                            <br/><br/><br/>
                            <h2>用户登录</h2>
                            <div id="contact_form">
                                <form action="login/login" method="post">
                                    <label for="Sno">账号:</label> <input type="text" id="Sno" name="Sno" class="required input_field" />
                                    <div class="cleaner_h10"></div>

                                    <label for="password">密码:</label> <input type="text" id="password" name="password" class="validate-email required input_field" />
                                    <div class="cleaner_h10"></div>

                                    <input style="font-weight: bold;" type="submit" class="submit_btn" name="submit" id="submit" value=" 登录 " />
                                </form>
                            </div>

                            <div class="address_info">
                                <h3>温馨提示</h3>
                                你需要在此输入你的账户名以及密码, <br />
                                在输入时请尽量保证你旁边没人,<br />
                                防止因为某些原因导致您的账户不安全.
                            </div>

                            <div class="cleaner_h20"></div>
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

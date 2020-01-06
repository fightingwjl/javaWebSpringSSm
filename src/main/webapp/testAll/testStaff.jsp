<%--
  Created by IntelliJ IDEA.
  User: 亮亮
  Date: 2020/1/3
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  action="staff/save" method="post">
    工号：<input type="text" name="Sno" /><br/>
    姓名：<input type="text" name="Sname"/> <br/>
    性别：<input type="text" name="Ssex"/> <br/>
    年龄：<input type="text" name="Sage"/> <br/>
    学历：<input type="text" name="Sedu"/> <br/>
    联系方式：<input type="text" name="Stel"/> <br/>
    邮箱：<input type="text" name="Semail"/> <br/>
    职位：<input type="text" name="Sposition"/> <br/>
    部门号：<input type="text" name="Dno"/> <br/>
    <input type="submit" value="保存" /> <br/>
</form>

<form action="staff/staff" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="查询" /> <br/>
</form>

<form action="staff/updateMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    姓名：<input type="text" name="Sname"/> <br/>
    <input type="submit" value="更新" /> <br/>
</form>

<form action="staff/deleteMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="删除" /> <br/>
</form>

</body>
</html>
<a href="staff/findAll">查询所有账户信息</a>
<br/><br/>
</body>
</html>

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
<form  action="admin/save" method="post">
    工号：<input type="text" name="Sno" /><br/>
    姓名：<input type="text" name="Aname"/> <br/>
    性别：<input type="text" name="Asex"/> <br/>
    年龄：<input type="text" name="Aage"/> <br/>
    联系电话：<input type="text" name="Atel"/> <br/>
    邮箱：<input type="text" name="Aemail"/> <br/>
    <input type="submit" value="保存" /> <br/>
</form>

<form action="admin/admin" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="查询" /> <br/>
</form>

<form action="admin/updateMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    姓名：<input type="text" name="Aname" /><br/>
    <input type="submit" value="更新" /> <br/>
</form>

<form action="admin/deleteMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="删除" /> <br/>
</form>

</body>
</html>
<a href="admin/findAll">查询所有账户信息</a>
<a href="account/findAll">点击查询所有账户信息</a>
<br/><br/>
</body>
</html>

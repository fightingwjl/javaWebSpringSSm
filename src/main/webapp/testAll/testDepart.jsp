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
<form  action="depart/save" method="post">
    部门号：<input type="text" name="Dno" /><br/>
    部门名称：<input type="text" name="Dname"/> <br/>
    经理号：<input type="text" name="Sno"/> <br/>
    <input type="submit" value="保存" /> <br/>
</form>

<form action="depart/depart" method="post">
    员工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="查询" /> <br/>
</form>

<form action="depart/updateMsg" method="post">
    部门号：<input type="text" name="Dno" /><br/>
    部门名称：<input type="text" name="Dname"/> <br/>
    <input type="submit" value="更新" /> <br/>
</form>

<form action="depart/deleteMsg" method="post">
    部门号：<input type="text" name="Dno" /><br/>
    <input type="submit" value="删除" /> <br/>
</form>

</body>
</html>
<a href="depart/findAll">查询所有账户信息</a>
<br/><br/>
</body>
</html>

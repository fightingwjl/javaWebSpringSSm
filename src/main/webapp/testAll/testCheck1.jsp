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
<form  action="check1/save" method="post">
    工号：<input type="text" name="Sno" /><br/>
    正常天数：<input type="text" name="Creqular"/> <br/>
    缺勤天数：<input type="text" name="Cabsence"/> <br/>
    迟到天数：<input type="text" name="Ctardy"/> <br/>
    <input type="submit" value="保存" /> <br/>
</form>

<form action="check1/check1" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="查询" /> <br/>
</form>

<form action="check1/updateMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    正常天数：<input type="text" name="Creqular"/> <br/>
    缺勤天数：<input type="text" name="Cabsence"/> <br/>
    迟到天数：<input type="text" name="Ctardy"/> <br/>
    <input type="submit" value="更新" /> <br/>
</form>

<form action="check1/deleteMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="删除" /> <br/>
</form>

</body>
</html>
<a href="check1/findAll">查询所有账户信息</a>
<br/><br/>
</body>
</html>

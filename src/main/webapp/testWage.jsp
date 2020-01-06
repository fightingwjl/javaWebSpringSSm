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
<form  action="wage/save" method="post">
    工号：<input type="text" name="Sno" /><br/>
    基础工资：<input type="text" name="Wbasic"/> <br/>
    惩罚金额：<input type="text" name="Wpenalty"/> <br/>
    实际工资：<input type="text" name="Wactual"/> <br/>
    <input type="submit" value="保存" /> <br/>
</form>

<form action="wage/wage" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="查询" /> <br/>
</form>

<form action="wage/updateMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    基础工资：<input type="text" name="Wbasic"/> <br/>
    惩罚金额：<input type="text" name="Wpenalty"/> <br/>
    实际工资：<input type="text" name="Wactual"/> <br/>
    <input type="submit" value="更新" /> <br/>
</form>

<form action="wage/deleteMsg" method="post">
    工号：<input type="text" name="Sno" /><br/>
    <input type="submit" value="删除" /> <br/>
</form>

</body>
</html>
<a href="wage/findAll">查询所有账户信息</a>
<a href="account/findAll">点击查询所有账户信息</a>
<br/><br/>
</body>
</html>

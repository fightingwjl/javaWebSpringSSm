<%--
  Created by IntelliJ IDEA.
  User: 亮亮
  Date: 2020/1/1
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>查询所有账户信息</h3>
<%--    <c:forEach items="${list}" var="account">--%>
<%--        ${account.name}--%>
<%--        ${account.money}--%>
<%--    </c:forEach>--%>
<c:forEach items="${list}" var="listStaff">
    <%--    注意大小写 这儿应该全部为小写--%>
    ${listStaff.sno}
    ${listStaff.sname}
    ${listStaff.ssex}
    ${listStaff.sedu}
</c:forEach>
</body>
</html>

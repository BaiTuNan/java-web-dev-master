<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/9/27
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>quickstart首页</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {
        pageContext.setAttribute("username", username);
%>
<h3>
    欢迎你:${username}
</h3>
<%
} else {
%>
<h3>用户未登录</h3>
<a href="${pageContext.request.contextPath}/">去登陆</a>
<%
    }
%>
</body>
</html>
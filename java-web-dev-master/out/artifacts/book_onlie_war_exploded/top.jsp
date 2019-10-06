<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>
    <li>
        <a href="http://yuedu.163.com/book?pek=1">读书</a>
    </li>
    <li>
        <a href="https://y.qq.com/">音乐</a>
    </li>

    <li>
        <a href="https://www.ximalaya.com/">FM</a>
    </li>

    <li>
        <a href="https://www.qidian.com/">更多</a>
    </li>
    <li>
        <a href="https://uland.taobao.com/sem/tbsearch?refpid=mm_26632360_8858797_29866178&keyword=一生必读的经典书籍&clk1=9c1064ba4cec8824b612b05c80ad6069&upsid=9c1064ba4cec8824b612b05c80ad6069">淘宝书籍</a>
    </li>
</ul>

<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">去登录</a>
    <%
        }
    %>
</ul>
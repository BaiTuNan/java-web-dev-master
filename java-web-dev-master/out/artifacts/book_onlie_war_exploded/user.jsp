<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/10/2
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(241, 243, 244);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }
        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }
        .nav li {
            color: rgb(63, 193, 219);
            font-size: 18px;
            margin-right: 20px;
        }
        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }
        .info {
            display: flex;

        }
        .info-1{
            background-image: url("http://ww1.sinaimg.cn/large/007YPn7Gly1g7n4h53nh0j31gl0pmqf7.jpg");
            background-size: cover;


        }
        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }
        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }
        .info-box {
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgba(241, 243, 244,0.5);
        }
        .info-box .top {
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }
        .info-box .top img {
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }
        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        .item {
            height: 40%;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;

        }
        .read {
            border-bottom: 1px solid #eee;

        }
        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }
        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            background-image: url("http://ww1.sinaimg.cn/large/007YPn7Gly1g7n4h53nh0j31gl0pmqf7.jpg");
            background-size: cover;
            height:100%;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<div class="info-1">
<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>首页</li>
        <li>我的关注</li>
        <li>我的图书</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>

<div class="container">

    <div class="row">
        <%--左侧2/3区域--%>
        <div class="col-8">

            <div class="info">
                <img src="images/${user.avatar}" alt="" class="profile">
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>今日动态</li>
                </ul>
                <br>今天是你的生日 我的中国</br>
                <br>清晨我放飞一群白鸽</br>
                <br>为你衔来一枚橄榄叶</br>
                <br>鸽子在崇山峻岭飞过</br>
                <br>我们祝福你的生日</br>
                <br>我的中国</br>


            </div>



            <div class="item">
                <ul class="nav">
                    <li>你想对祖国母亲说的话</li>
                </ul>
                <label>
                    <textarea cols="80" rows="5"></textarea>
                </label>
                <div>
                    <input type="button" value="我想说">
                </div>
            </div>

        </div>


        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="info-box">
                <div class="top">
                    <img src="images/${user.avatar}" alt="">
                    <div>
                        <p>姓名：${user.nickname}</p>
                        <p>常居：${user.address}</p>
                        <p>账号：${user.account}</p>

                        <p>${user.joinDate}加入</p>

                    </div>
                </div>
                <br>

                <h2>新中国成立70周年</h2>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <h2><li>我的收藏</li></h2>
                </ul>
                <br>
                <div class="read">
                    <p><a href="">${user.nickname}</a>想读
                        <a href="">中国近代史</a>
                    </p>
                    <p style="color: #9b9b9b;">2019年1月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>想读
                        <a href="">中华上下五千年</a>
                    </p>
                    <p style="color: #9b9b9b;">2019年1月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>想读
                        <a href="">红军</a>
                    </p>
                    <p style="color: #9b9b9b;">2019年1月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>想读
                        <a href="">马克思主义</a>
                    </p>
                    <p style="color: #9b9b9b;">2019年1月2日</p>
                </div>

            </div>
        </div>

</div>
    </div>

</body>
</html>
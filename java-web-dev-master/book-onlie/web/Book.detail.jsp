<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/10/2
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2, h3 {
            color: rgb(73, 73, 73);
        }
        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }
        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }
        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        .col-6 {
            height: 400px;
            padding-right: 10px;
        }
        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="书名、作者、ISBN" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/images/search.png" alt="">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                </div>
            </div>
        </div>
        <div class="right">

            <h3>你可能喜欢的作者</h3>
            <hr>
            <div class="row-1">

                <div  class="column-2">
                    <img src="https://facepic.qidian.com/qd_face/349573/a4921/0" class="avatar">
                    <p>唐家三少</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(63, 193, 219);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://facepic.qidian.com/qd_face/349573/a4362096/0" class="avatar">
                    <p>我吃西红柿</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont" style="color:rgb(63, 193, 219);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://img03.sogoucdn.com/app/a/100520093/ca86e620b9e623ff-e7ae36db714776c0-b0158348187351632005e109f7faff29.jpg" class="avatar">
                    <p>呆萌的作者</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont" style="color:rgb(63, 193, 219);">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://facepic.qidian.com/qd_face/349573/a4921/0" class="avatar">
                    <p>唐家YI少</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(63, 193, 219);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://facepic.qidian.com/qd_face/349573/a4921/0" class="avatar">
                    <p>无敌制造</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(63, 193, 219);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
            </div>
        </div>
    </div>

</div>
</body>
</html>

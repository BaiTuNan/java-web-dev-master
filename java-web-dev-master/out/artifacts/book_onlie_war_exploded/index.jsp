<%@ page import="com.bo.entity.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/9/27
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>主页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
  <style type="text/css">
    .iconfont{
      font-family:"iconfont" !important;
      font-size:16px;font-style:normal;
      -webkit-font-smoothing: antialiased;
      -webkit-text-stroke-width: 0.2px;
      -moz-osx-font-smoothing: grayscale;}

    @font-face {
      font-family: 'iconfont';  /* project id 1437756 */
      src: url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.eot');
      src: url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.woff2') format('woff2'),
      url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.woff') format('woff'),
      url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.svg#iconfont') format('svg');
    }
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
      background-color: rgb(63, 193, 219);
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .search-btn img {
      width: 50%;
      height: 50%;
    }

    .card {
      height: 180px;
      margin: 20px 5px 20px 5px;
    }

    .card img {
      width: 100%;
      height: 90%;
    }

    .card p {
      font-size: 13px;
      color: #9b9b9b;
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


  </style>
</head>
<body>
<%
  List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<div id="top">
  <jsp:include page="top.jsp"/>
</div>

<div id="search">
  <h2>搜索图书</h2>
  <input type="text" placeholder="书名、作者、ISBN" class="search-input">
  <div class="search-btn">
    <i class="iconfont">&#xe600;</i>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-8">
      <h3>新书速递</h3>
      <hr>
      <div class="row">
        <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
        <%
          for (Book book : bookList) {
            pageContext.setAttribute("book", book);
        %>
        <%--引用col-2表示每行显示5本，再追加card细节样式--%>
        <div class="col-2 card">
          <%--点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
          <a href="${pageContext.request.contextPath}/detail/${book.id}">
            <img src="images/${book.cover}" alt="">
          </a>
          <p style="color: rgb(51, 119, 178)">${book.name}</p>
          <p>${book.author}</p>
        </div>
        <%
          }
        %>
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

  <footer>
    <ul>
      <li>@2015-2019</li>

      <li>南京工业职业技术学院</li>
    </ul>
    <ul>
      <li>联系我们</li>
      <li>帮助中心</li>
      <li>法律声明</li>
      <li>移动合作</li>
    </ul>
  </footer>
    </div>
</div>
</body>
</html>

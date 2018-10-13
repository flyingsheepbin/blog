<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/11
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page</title>
    <link rel="short icon" href="/resource/img/logosm.png"/>
    <link href="/resource/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/resource/css/style.css" rel="stylesheet">
</head>
<body class="bg-light text-dark">
    <!--header-->
    <br>
    <a href="/" style="float:left;" class="text-dark"><h3>会飞的羊博客</h3></a>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link active" href="#">首页</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">链接</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">联系</a>
        </li>
    </ul>
    <br>
    <div class="page-left"></div>
    <div class="page-center"><h1>${obj.title}</h1>${obj.page}<a href="/article/edit">编辑</a></div>
    <div class="page-right"></div>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/11
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑</title>
    <link href="/resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resource/css/style.css" rel="stylesheet">
</head>
<body>
    <div contentEditable class="card edit_page">
        <div>
            <span>编辑文章</span><button type="button" class="btn btn-primary btn-sm">写文章</button>
        </div>
        <input type="text" value="${edit_page.title}">
        <span hidden>${edit_page.id}</span>
        <div>
            ${edit_page.page}
        </div>
    </div>
    <div class="float-right">
        <button type="button" class="btn btn-secondary btn-sm" onclick="history.go(-1);">取消</button>
        <button type="button" class="btn btn-primary btn-sm"><a href="#" class="text-white">更新</a></button>
    </div>
</body>
    <script src="/resource/js/jquery-3.3.1.min.js"></script>
    <script src="/resource/js/bootstrap.min.js"></script>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/16
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="/resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resource/css/style.css">
</head>
<body>
    <div class="card" style="width: 91%;height:100%">
        <div class="card-body">
            <span>文章</span>&nbsp;
            <button class="btn btn-sm btn-primary"><a href="" class="nav-link text-white">写文章</a></button>
            <div>
                <a href="">全部</a> | <a href="">已发布</a> | <a href="">草稿</a> | <a href="">私密</a>
            </div>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th><th>标题</th><th>日期</th><th>访问量</th><th>操作</th>
                </tr>
                </thead>
                <tbody id="article">
                    ${tbody}
                </tbody>
            </table>
            <div style="float:right;">
                <button type="button" class="btn btn-secondary btn-sm">
                    <a href="#" class="text-white"><<</a>
                </button>
                <button type="button" class="btn btn-secondary btn-sm">
                    <a href="#" class="text-white"><</a>
                </button>
                第1页,共${count}页
                <button type="button" class="btn btn-secondary btn-sm">
                    <a href="#" class="text-white">></a>
                </button>
                <button type="button" class="btn btn-secondary btn-sm">
                    <a href="#" class="text-white">>></a>
                </button>
            </div>
        </div>
    </div>
</body>
</html>

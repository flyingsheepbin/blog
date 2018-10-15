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
    <ul class="nav justify-content-end nav-pills ">
        <li class="nav-item active">
            <a class="nav-link" href="/">首页</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/link" id="link">链接</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/contact" id="contact">联系</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/about" id="about">关于</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/help" id="help">帮助</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#exampleModal">登陆</a>
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">登陆</h5>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="/admin/login">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">用户</span>
                                    </div>
                                    <input type="text" name='username' class="form-control"   aria-describedby="basic-addon1">
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">密码</span>
                                    </div>
                                    <input type="password" name="password" class="form-control"   aria-describedby="basic-addon1">
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary">登陆</button>
                                    <button type="button" class="btn btn-primary" onclick="window.location='/admin/register'">注册</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <br>
    <div class="page-left"></div>
    <div class="page-center"><h1>${obj.title}</h1>${obj.page}<a href="/article/edit">编辑</a></div>
    <div class="page-right"></div>
    <script src="/resource/js/jquery-3.3.1.min.js"></script>
    <script src="/resource/js/bootstrap.min.js"></script>
    <script>
        $('#${active}')[0].className += ' active';
    </script>
</body>
</html>

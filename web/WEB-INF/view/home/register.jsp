<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/14
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="short icon" href="/resource/img/logosm.png"/>
    <link href="/resource/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/resource/css/style.css" rel="stylesheet">
</head>
<body>
    <a href="/" style="float:left;" class="text-dark"><h3>会飞的羊博客</h3></a>
    <div class="row" style="height:30%;"></div>
    <div class="row" style="height:30%;">
        <div class="col-sm"></div>
        <div class="col-sm" >
            <form method="post" action="/admin/register">
                <div class="form-group row">
                    <label for="inputUser3" class="col-sm-2 col-form-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"name="username" id="inputUser3" placeholder="UserName">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" id="inputEmail3" placeholder="Email">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-block btn-primary">注册</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm"></div>
    </div>
    <script src="/resource/js/jquery-3.3.1.min.js"></script>
    <script src="/resource/js/bootstrap.min.js"></script>
<script>
    if('${register}'=='false'){
        alert("用户已存在");
    }
</script>
</body>
</html>

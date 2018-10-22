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
    <link href="/resource/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="card" style="width: 91%;height:100%">
        <div class="card-body">
            <span>文章</span>&nbsp;
            <button class="btn btn-sm btn-primary"><a href="/article/new" class="nav-link text-white">写文章</a></button>
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
                <a href="/article/view/0" class="text-white btn btn-secondary btn-sm"><<</a>
                <a href="/article/view/${now-2}" class="text-white btn btn-secondary btn-sm"><</a>
                第${now}页,共${count}页
                <a href="/article/view/1" class="btn text-white btn-secondary btn-sm">></a>
                <a href="/article/view/${count-1}" class="text-white btn btn-secondary btn-sm">>></a>
            </div>
        </div>
    </div>
</body>
    <script src="/resource/js/jquery-3.3.1.min.js"></script>
    <script src="/resource/js/bootstrap.min.js"></script>
    <script>
        function edit(id){
            window.location = "/article/edit/"+id;
        }
        function deleteIt(id){
            $.ajax({
                url:"http://localhost:8080/article/delete/"+id,
                type:"GET",
                success:function(data){
                    if(data==200){
                        alert("删除成功！");
                        window.location = "/article/view/0";
                    }else{
                        alert("删除失败");
                    }
                }
            })
        }
    </script>
</html>

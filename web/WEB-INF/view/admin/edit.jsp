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
    <div>
        <span>编辑文章</span><a href="/article/new" class="btn btn-primary btn-sm">写文章</a>
    </div>
    <h2 id="title">${edit_page.title}</h2>
    <id hidden>${edit_page.id}</id>
    <div contentEditable id="article" class="card edit_page">
        ${edit_page.page}
    </div>
    <div class="float-right">
        <button type="button" class="btn btn-secondary btn-sm" onclick="history.go(-1);">取消</button>
        <button type="button" class="btn btn-primary btn-sm"><a href="#" class="text-white" onclick="update()">更新</a></button>
    </div>
</body>
    <script src="/resource/js/jquery-3.3.1.min.js"></script>
    <script src="/resource/js/bootstrap.min.js"></script>
    <script>
        function update(){
            var html = $('#article')[0].innerHTML;
            var title = $('#title')[0].innerHTML;
            var id = $('id')[0].innerHTML;
            console.log(id);
            var json = {
                "title":title,
                "page":html,
                "id":id
            };
            $.ajax({
                url:"http://localhost:8080/article/update/",
                type:"POST",
                data:json,
                success:function(data){
                    if(data==200)
                        alert("修改成功")
                }
            })
        }
    </script>
</html>

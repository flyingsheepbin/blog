<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/10/21
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>write</title>
    <link href="/resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resource/css/style.css" rel="stylesheet">
</head>
<body>
  <h2 id="title" contenteditable>标题</h2>
  <div contenteditable id="page" class="edit_page card">
  </div>
  <div class="float-right">
      <button type="button" class="btn btn-primary" onclick="writePage()">发布</button>
  </div>
  <script src="/resource/js/jquery-3.3.1.min.js"></script>
  <script src="/resource/js/bootstrap.min.js"></script>
  <script>
      function writePage(){
          console.log("begin");
          var title = $('#title')[0].innerHTML;
          var page = $('#page')[0].innerHTML;
          var date = new Date();
          var json = {
              "title":title,
              "page":page,
              "date":date.toLocaleDateString()
          };
          $.ajax({
              url:"http://localhost:8080/article/write/",
              type:"POST",
              data:json,
              success:function(data){
                  if(data==200){
                      alert("恭喜你添加了一篇新的文章");
                      window.location="/article/view/0";
                  }else{
                      alert("添加异常")
                  }
              }
          })
          console.log("end");
      }
  </script>
</body>
</html>

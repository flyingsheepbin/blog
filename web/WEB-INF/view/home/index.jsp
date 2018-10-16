<%@page pageEncoding="utf-8"%>

<html>
    <head>
        <title>index</title>
        <meta charset="utf-8"/>
        <link rel="short icon" href="/resource/img/logosm.png"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="/resource/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/resource/css/style.css" rel="stylesheet">
    </head>
    <body class="bg-light text-dark">
        <!--header-->
        <div class="head">
            <a href="/" style="float:left;" class="text-dark"><h3>会飞的羊博客</h3></a>
            <ul class="nav justify-content-end nav-pills ">
                <li class="nav-item active">
                    <a class="nav-link active" href="/">首页</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/link">链接</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">联系</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">关于</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/help">帮助</a>
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
        </div>
        <div class="content-box">
            <div class="page-left"></div>
            <div id="article-content" class="page-center">
                <!--article-->
                <div id="demo" class="carousel slide" data-ride="carousel">
                    <!-- 指示符 -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>

                    <!-- 轮播图片 -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/resource/img/jeesite.png" class="content-img">
                        </div>
                        <div class="carousel-item">
                            <img src="/resource/img/ege2.jpg" class="content-img">
                        </div>
                        <div class="carousel-item">
                            <img src="/resource/img/google.jpg" class="content-img">
                        </div>
                    </div>

                    <!-- 左右切换按钮 -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div><br>

                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page0" class="article-content" style="display:inline;">
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page1" class="article-content" style="display:inline;">
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page2" class="article-content" style="display:inline;">
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page3" class="article-content" style="display:inline;">
                    </div>
                </div>
                <!--foot-->
                <div class="float-right">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" onclick="get(0)">1</a></li>
                            <li class="page-item"><a class="page-link" onclick="get(1)">2</a></li>
                            <li class="page-item"><a class="page-link" onclick="get(2)">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="page-right">
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">最新资讯</div>
                    <div id="newArticle" class="card-body">
                    </div>
                </div>
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">热门文章</div>
                    <div id="mostView" class="card-body">
                    </div>
                </div>
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">最多评论</div>
                    <div id="mostComment"class="card-body">
                    </div>
                </div>
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">热门标签</div>
                    <div class="card-body">
                        <a href="#" class="badge badge-primary">Primary</a>
                        <a href="#" class="badge badge-secondary">Secondary</a>
                        <a href="#" class="badge badge-success">Success</a>
                        <a href="#" class="badge badge-danger">Danger</a>
                        <a href="#" class="badge badge-warning">Warning</a>
                        <a href="#" class="badge badge-info">Info</a>
                        <a href="#" class="badge badge-light">Light</a>
                        <a href="#" class="badge badge-dark">Dark</a>
                        <a href="#" class="badge badge-primary">Primary</a>
                        <a href="#" class="badge badge-secondary">Secondary</a>
                        <a href="#" class="badge badge-success">Success</a>
                        <a href="#" class="badge badge-danger">Danger</a>
                        <a href="#" class="badge badge-warning">Warning</a>
                        <a href="#" class="badge badge-info">Info</a>
                        <a href="#" class="badge badge-light">Light</a>
                        <a href="#" class="badge badge-dark">Dark</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="above_foot">
            <div class="foot-before">
                <div>关于本站</div>
                <div>关注我们</div>
            </div>
        </div>
        <footer>
            <div>版权所有©flyingsheep 赣ICP备17015733号 公安备案36098102000129</div>
        </footer>
      <!--添加一些必要的js-->
      <script src="/resource/js/jquery-3.3.1.min.js"></script>
      <script src="/resource/js/bootstrap.min.js"></script>
      <script>
          if('${register}'=='true'){
              alert("注册成功");
          }
          //获取最新文章，最热文章模板函数
          function getList(id,data){
              var html='';
              for(var i=0;i<5;i++){
                  html+='<a href="/article/'+data[i].id+'"class="text-muted">'+data[i].title+'</a><br>';
              }
              $(id)[0].innerHTML=html;
          }
          function get(i) {
              $.ajax({
                  url: "http://localhost:8080/"+i,
                  type: "get",
                  success: function (data) {
                      for (var i = 0; i < 4; i++) {
                          $(('#article-page' + i))[0].innerHTML =
                              "<h5 class='card-title'>" + data[i].title + "</h5>" +
                              "<p class='card-text'>" + data[i].descriable + "</p>" +
                              "<a href='#' class='card-link'>收藏</a>" +
                              "<a href='/article/" + data[i].id + "'  class='card-link'>阅读全文</a>";
                      }
                  }
              })
          }
         $.ajax({
             url:"http://localhost:8080/article/newArticle",
             type:"GET",
             success:function(data){
                 getList('#newArticle',data);
             }
         });
          $.ajax({
              url:"http://localhost:8080/article/mostView",
              type:"GET",
              success:function(data){
                  getList('#mostView',data);
              }
          });
          $.ajax({
              url:"http://localhost:8080/article/mostComment",
              type:"GET",
              success:function(data){
                  getList('#mostComment',data);
              }
          });
          get(0);
      </script>
    </body>
</html>
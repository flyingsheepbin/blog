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
            <div id="welcome">
                欢迎光临！${user.username}
            </div>
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
                    <a id="login" class="nav-link" data-toggle="modal" data-target="#exampleModal">登陆</a>
                    <a id="manage" class="nav-link" href="/admin/manager" hidden>管理</a>
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
                        <h5 class="card-title">${list[0].title}</h5>
                        <p class="card-text">${list[0].descriable}</p>
                        <a href='#' class="card-link">收藏</a>
                        <a href="/article/${list[0].id}"  class="card-link">阅读全文</a>
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page1" class="article-content" style="display:inline;">
                        <h5 class="card-title">${list[1].title}</h5>
                        <p class="card-text">${list[1].descriable}</p>
                        <a href='#' class="card-link">收藏</a>
                        <a href="/article/${list[1].id}"  class="card-link">阅读全文</a>
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page2" class="article-content" style="display:inline;">
                        <h5 class="card-title">${list[2].title}</h5>
                        <p class="card-text">${list[2].descriable}</p>
                        <a href='#' class="card-link">收藏</a>
                        <a href="/article/${list[2].id}"  class="card-link">阅读全文</a>
                    </div>
                </div>
                <div class="article" style="width: 48rem;display:inline;">
                    <div class="div-img">
                        <img src="/resource/img/script.jpg" class="rounded float-left article-img" alt="...">
                    </div>
                    <div id="article-page3" class="article-content" style="display:inline;">
                        <h5 class="card-title">${list[3].title}</h5>
                        <p class="card-text">${list[3].descriable}</p>
                        <a href='#' class="card-link">收藏</a>
                        <a href="/article/${list[3].id}"  class="card-link">阅读全文</a>
                    </div>
                </div>
                <!--foot-->
                <div class="float-right btn-toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group">
                        <a href="/${pageNum-1}" class="btn btn-light">上一页</a>
                        <a href="/0" id="link0" class="btn btn-light">1</a>
                        <a href="/1" id="link1" class="btn btn-light">2</a>
                        <a href="/2" id="link2" class="btn btn-light">3</a>
                        <a href="/${pageNum+1}" class="btn btn-light">下一页</a>
                    </div>
                </div>
            </div>
            <div class="page-right">
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">最新资讯</div>
                    <div id="newArticle" class="card-body">
                        <a href="/article/${newArticle[0].id}" class="text-muted">${newArticle[0].title}</a><br>
                        <a href="/article/${newArticle[1].id}" class="text-muted">${newArticle[1].title}</a><br>
                        <a href="/article/${newArticle[2].id}" class="text-muted">${newArticle[2].title}</a><br>
                        <a href="/article/${newArticle[3].id}" class="text-muted">${newArticle[3].title}</a><br>
                        <a href="/article/${newArticle[4].id}" class="text-muted">${newArticle[4].title}</a><br>
                    </div>
                </div>
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">热门文章</div>
                    <div id="mostView" class="card-body">
                        <a href="/article/${mostArticle[0].id}" class="text-muted">${mostArticle[0].title}</a><br>
                        <a href="/article/${mostArticle[1].id}" class="text-muted">${mostArticle[1].title}</a><br>
                        <a href="/article/${mostArticle[2].id}" class="text-muted">${mostArticle[2].title}</a><br>
                        <a href="/article/${mostArticle[3].id}" class="text-muted">${mostArticle[3].title}</a><br>
                        <a href="/article/${mostArticle[4].id}" class="text-muted">${mostArticle[4].title}</a><br>
                    </div>
                </div>
                <div class="card  bg-light mb-3" style="max-width: 20rem;">
                    <div class="card-header">最多评论</div>
                    <div id="mostComment"class="card-body">
                        <a href="/article/${mostComment[0].id}" class="text-muted">${mostComment[0].title}</a><br>
                        <a href="/article/${mostComment[1].id}" class="text-muted">${mostComment[1].title}</a><br>
                        <a href="/article/${mostComment[2].id}" class="text-muted">${mostComment[2].title}</a><br>
                        <a href="/article/${mostComment[3].id}" class="text-muted">${mostComment[3].title}</a><br>
                        <a href="/article/${mostComment[4].id}" class="text-muted">${mostComment[4].title}</a><br>
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
          if('${user}'!=''){
              $('#login')[0].hidden=true;
              $('#manage')[0].hidden=false;
          }
          <%--if('${user}'!=''){--%>
              <%--$('#welcome')[0].innerHTML="您好！${user}";--%>
          <%--}--%>
          if('${pageNum}'<'3'){
              $('#link'+${pageNum})[0].className+=" active";
          }else{
              var link0=$('#link0')[0];
              var link1=$('#link1')[0];
              var link2=$('#link2')[0];
              link0.innerHTML=${pageNum-1};
              link0.href='/${pageNum-2}';
              link1.innerHTML=${pageNum};
              link1.href='/${pageNum-1}';
              link2.className+=" active";
              link2.href="#";
              link2.innerHTML=${pageNum+1};
          }
      </script>
    </body>
</html>
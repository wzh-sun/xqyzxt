<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>智慧畜禽养殖系统</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
  <!-- Fontastic Custom icon font-->
  <link rel="stylesheet" href="css/fontastic.css">
  <!-- Google fonts - Poppins -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="img/favicon.ico">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
  <!-- 主要的导航条-->
  <header class="header">
    <nav class="navbar">
      <!-- 搜索框-->
      <div class="search-box">
        <button class="dismiss"><i class="icon-close" title="搜索"></i></button>
        <form id="searchForm" action="#" role="search">   <!--搜索框按钮-->
          <input type="search" placeholder="你想要查找什么？" class="form-control">
        </form>
      </div>
      <div class="container-fluid">
        <div class="navbar-holder d-flex align-items-center justify-content-between">
          <!-- 导航页眉-->
          <div class="navbar-header">
            <!-- 导航品牌 --><a href="barton.jsp" class="navbar-brand d-none d-sm-inline-block">
            <div class="brand-text d-none d-lg-inline-block"><span>主页 &nbsp;</span><strong>信息</strong></div>
            <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
            <!-- 开关按钮--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
          </div>
          <!-- 导航菜单 -->
          <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
            <!-- 搜索-->
            <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
            <!-- 通知订阅-->
            <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">0</span></a>
              <ul aria-labelledby="notifications" class="dropdown-menu">
                <%--<li><a rel="nofollow" href="#" class="dropdown-item">
                  <div class="notification">
                    <div class="notification-content"><i class="fa fa-envelope bg-green"></i>您收到了6条新消息 </div>
                    <div class="notification-time"><small>4分钟前</small></div>
                  </div></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item">
                  <div class="notification">
                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>您新增了2个粉丝</div>
                    <div class="notification-time"><small>4分钟前</small></div>
                  </div></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item">
                  <div class="notification">
                    <div class="notification-content"><i class="fa fa-upload bg-orange"></i>服务器重启</div>
                    <div class="notification-time"><small>4分钟前</small></div>
                  </div></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item">
                  <div class="notification">
                    <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>您新增了2个粉丝</div>
                    <div class="notification-time"><small>10分钟前</small></div>
                  </div></a></li>--%>
                <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>查看全部通知                                           </strong></a></li>
              </ul>
            </li>
            <!-- 消息-->
            <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">0</span></a>
              <ul aria-labelledby="notifications" class="dropdown-menu">
                <%--<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                  <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                  <div class="msg-body">
                    <h3 class="h5">张三</h3><span>发送给你消息</span>
                  </div></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                  <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                  <div class="msg-body">
                    <h3 class="h5">李四</h3><span>发送给你消息</span>
                  </div></a></li>
                <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                  <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                  <div class="msg-body">
                    <h3 class="h5">王五</h3><span>发送给你消息</span>
                  </div></a></li>--%>
                <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>阅读全部信息   </strong></a></li>
              </ul>
            </li>
            <!-- 语言选择    -->
            <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/CN.png" alt="English"><span class="d-none d-sm-inline-block">中文(简体)</span></a>
              <ul aria-labelledby="languages" class="dropdown-menu">
                <li><a rel="nofollow" href="#" onclick="return confirm('抱歉，还没写别的语言');" class="dropdown-item"> <img src="img/flags/16/GB.png" alt="English" class="mr-2">English</a></li>
                <li><a rel="nofollow" href="#" onclick="return confirm('抱歉，还没写别的语言');" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>
              </ul>
            </li>
            <!-- 退出    -->
            <li class="nav-item"><a href="login.jsp" class="nav-link logout" onclick="return confirm('确认退出吗？')"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="page-content d-flex align-items-stretch">
    <!-- 侧导航栏 -->
    <nav class="side-navbar">
      <!-- 侧边栏标题-->
      <div class="sidebar-header d-flex align-items-center">
        <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
        <div class="title">
          <h1 class="h4">${sessionScope.username}</h1>
          <p>
              <c:if test="${sessionScope.stutas == 0}">普通用户</c:if>
              <c:if test="${sessionScope.stutas == 1}">鸡舍管理员</c:if>
              <c:if test="${sessionScope.stutas == 2}">系统管理员</c:if>
          </p>
        </div>
      </div>
      <!-- 侧边栏菜单--><span class="heading">菜单</span>
      <ul class="list-unstyled">
        <li><a href="barton.jsp"> <i class="icon-home"></i>实时数据 </a></li>
        <li><a href="tables.jsp"> <i class="icon-grid"></i>历史纪录 </a></li>
        <li><a href="charts.jsp"> <i class="fa fa-bar-chart"></i>数据对照 </a></li>
        <li  class="active"><a href="forms.jsp"> <i class="icon-padnote"></i>个人信息 </a></li>
        <li><a href="control.jsp"> <i class="icon icon-list-1"></i>设备控制 </a></li>
        <!--<li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Example dropdown </a>
          <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
            <li><a href="#">Page</a></li>
            <li><a href="#">Page</a></li>
            <li><a href="#">Page</a></li>
          </ul>
        </li>
        <li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>-->
      </ul>
    </nav>
    <div class="content-inner">
      <!-- Page Header-->
      <header class="page-header">
        <div class="container-fluid">
          <h2 class="no-margin-bottom">个人信息</h2>
        </div>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="barton.jsp">实时数据</a></li>
          <li class="breadcrumb-item active">个人信息            </li>
            <c:if test="${sessionScope.stutas == 2}">
                <button type="submit" class="btn btn-primary user"><a href="management.jsp">用户管理</a></button>
            </c:if>
            <c:if test="${sessionScope.stutas == 0}">&nbsp;</c:if>
            <c:if test="${sessionScope.stutas == 1}">&nbsp;</c:if>
        </ul>
      </div>
      <!-- Forms Section-->
      <section class="forms">
        <div class="container-fluid">
          <div class="row">
            <!-- Basic Form-->
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">个人信息</h3>
                </div>
                <div class="card-body">
                  <table style="font-size: 20px;line-height: 50px">
                    <tr>
                      <td>名称：</td>
                      <td>${sessionScope.userNickName}</td>
                    </tr>
                    <tr>
                      <td>账号：</td>
                      <td>${sessionScope.username}</td>
                    </tr>
                    <tr>
                      <td>职位：</td>
                        <c:if test="${sessionScope.stutas == 0}">
                            <td>普通用户</td>
                        </c:if>
                        <c:if test="${sessionScope.stutas == 1}">
                            <td>鸡舍管理员</td>
                        </c:if>
                        <c:if test="${sessionScope.stutas == 2}">
                            <td>系统管理员</td>
                        </c:if>
                    </tr>
                    <tr>
                      <td>手机号：</td>
                      <td>${sessionScope.userphone}</td>
                    </tr>
                    <tr>
                      <td>用户说明：</td>
                      <td>${sessionScope.describes}</td>
                    </tr>
                    <tr>
                      <td>所在地址：</td>
                      <td>${sessionScope.userAdd}</td>
                    </tr>
                  </table>

                </div>
              </div>
            </div>
            <!-- Horizontal Form-->
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">鸡舍信息</h3>
                </div>
                <div class="card-body">
                  <table style="font-size: 20px;line-height: 50px">
                    <tr>
                      <td>鸡舍数量：</td>
                      <td>1</td>
                    </tr>
                    <tr>
                      <td>公鸡：</td>
                      <td>1000只</td>
                    </tr>
                    <tr>
                      <td>母鸡：</td>
                      <td>3000只</td>
                    </tr>
                    <tr>
                      <td>鸡蛋：</td>
                      <td>10000个</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <!-- Inline Form-->
            <div class="col-lg-8">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">修改名称</h3>
                </div>
                <div class="card-body">
                  <form class="form-inline">
                    <div class="form-group">
                      <label for="inlineFormInput" class="sr-only">Name</label>
                      <input id="inlineFormInput" type="text" placeholder="姓" class="mr-3 form-control">
                    </div>
                    <div class="form-group">
                      <label for="inlineFormInputGroup" class="sr-only">Username</label>
                      <input id="inlineFormInputGroup" type="text" placeholder="名" class="mr-3 form-control">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">保存</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- Modal Form-->
            <div class="col-lg-4">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">...</h3>
                </div>
                <div class="card-body text-center">
                  <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary">修改密码</button>
                  <button type="button" class="btn btn-primary">切换账号</button>
                  <button type="button" class="btn btn-primary">退出登录</button>
                  <!-- Modal-->
                  <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
                    <div role="document" class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 id="exampleModalLabel" class="modal-title">修改密码</h4>
                          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                          <p>按提示输入正确的密码.</p>
                          <form>
                            <div class="form-group">
                              <label>当前密码</label>
                              <input type="password" placeholder="请输入当前密码" class="form-control">
                            </div>
                            <div class="form-group">
                              <label>新密码</label>
                              <input type="password" placeholder="请输入新密码" class="form-control">
                            </div>
                            <div class="form-group">
                              <label>确认密码</label>
                              <input type="password" placeholder="请输入确认密码" class="form-control">
                            </div>
                            <div class="modal-footer">
                              <button type="button" data-dismiss="modal" class="btn btn-secondary">取消</button>
                              <button type="button" class="btn btn-primary">确认</button>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Form Elements -->
          </div>
        </div>
      </section>
      <!-- 页面底部-->
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>智慧畜禽养殖系统 &copy; 2019</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>网站备案号： <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank" title="备案信息">赣ICP备19000946号 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <img src="img/batb.png">&nbsp;&nbsp;&nbsp;赣公网安备<a href="http://www.beian.gov.cn/portal/registerSystemInfo?COLLCC=839558812&recordcode=36102402000002" title="公网备案" target="_blank">&nbsp;&nbsp; 36102402000002号</a></p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>
</html>
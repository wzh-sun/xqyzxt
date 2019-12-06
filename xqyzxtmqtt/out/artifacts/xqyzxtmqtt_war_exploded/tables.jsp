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
        <li class="active"><a href="tables.jsp"> <i class="icon-grid"></i>历史纪录 </a></li>
        <li><a href="charts.jsp"> <i class="fa fa-bar-chart"></i>数据对照 </a></li>
        <li><a href="forms.jsp"> <i class="icon-padnote"></i>个人信息 </a></li>
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
          <h2 class="no-margin-bottom">历史纪录</h2>
        </div>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder container-fluid">
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="barton.jsp">实时数据</a></li>
          <li class="breadcrumb-item active">历史纪录            </li>
        </ul>
      </div>
      <section class="tables">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">温度历史记录</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                      <tr>
                        <th>序号</th>
                        <th>日期</th>
                        <th>时间</th>
                        <th>温度警告</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>2018-5-23</td>
                        <td>13:25</td>
                        <td>30°C</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>2018-5-23</td>
                        <td>15:30</td>
                        <td>30°C</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>2018-5-26</td>
                        <td>8:50</td>
                        <td>29°C</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard2" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">湿度历史记录</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                      <tr>
                        <th>序号</th>
                        <th>日期</th>
                        <th>时间</th>
                        <th>湿度警告</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>2018-5-23</td>
                        <td>13:25</td>
                        <td>30°C</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>2018-5-23</td>
                        <td>15:30</td>
                        <td>30°C</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>2018-5-26</td>
                        <td>8:50</td>
                        <td>29°C</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">二氧化碳历史记录</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped table-hover">
                      <thead>
                      <tr>
                        <th>序号</th>
                        <th>日期</th>
                        <th>时间</th>
                        <th>浓度警告</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>2018-5-23</td>
                        <td>13:35</td>
                        <td>过浓</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>2018-5-24</td>
                        <td>13:25</td>
                        <td>过浓</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>2018-5-27</td>
                        <td>12:35</td>
                        <td>过浓</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>2018-5-29</td>
                        <td>8:35</td>
                        <td>过浓</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">光照历史纪录</h3>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped table-sm">
                      <thead>
                      <tr>
                        <th>序号</th>
                        <th>日期</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>2018-5-23</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>2018-5-24</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>2018-5-25</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>2018-5-26</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td>2018-5-27</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      <tr>
                        <th scope="row">6</th>
                        <td>2018-5-28</td>
                        <td>8:30</td>
                        <td>15:30</td>
                      </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
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
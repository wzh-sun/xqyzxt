<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%
    Date d = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    String now = df.format(d);

    String time = new SimpleDateFormat("HH:mm").format(Calendar.getInstance().getTime());
%>
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
    <script>
        function kaiqi(){
            var test1=document.getElementById("test1").value;
            var test2=document.getElementById("test2").value;
            var test3=document.getElementById("test3");
            var test4="灯光一 开启时间是："+test1+"&nbsp"+test2+"&nbsp";
            test3.innerHTML=test4;

        }
        function guanbi(){
            var test5=document.getElementById("test5").value;
            var test6=document.getElementById("test6").value;
            var test7=document.getElementById("test7");
            var test8="灯光一 关闭时间是："+test5+"&nbsp"+test6+"&nbsp";
            test7.innerHTML=test8;
        }
        function fsstarttime(){
            var fstime1=document.getElementById("fstime1").value;
            var fstime2=document.getElementById("fstime2").value;
            var feview=document.getElementById("feview");
            var feview1="风扇一 开启时间是："+fstime1+"&nbsp"+fstime2+"&nbsp";
            feview.innerHTML=feview1;
        }
        function fsclosetime(){
            var fstime3=document.getElementById("fstime3").value;
            var fstime4=document.getElementById("fstime4").value;
            var feviews=document.getElementById("feviews");
            var feview2="风扇一 关闭时间是："+fstime3+"&nbsp"+fstime4+"&nbsp";
            feviews.innerHTML=feview2;
        }
    </script>
    <style>
        .switch{
            width: 60px;
            height: 34px;
            position: relative;
            display: inline-block;
        }
        input{
            display:none ;
        }
        .round{
            border-radius: 24px;
        }
        .slider{
            background: #ccc;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            transition: all .4s;
            cursor: pointer;
        }
        /*//小圆点*/
        .slider:after{
            content: '';
            width: 26px;
            height: 26px;
            display: block;
            border-radius: 50%;
            background-color: #FFFFFF;
            position: absolute;
            top: 4px;
            left: 4px;
            transition: all .4s;
        }
        /*//单选框选中后改变的样式*/
        input:checked+.slider{
            background: #2196F3;
        }
        input:checked+.slider:after{
            transform: translateX(26px);
        }
    </style>
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
                <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>查看全部通知                                           </strong></a></li>
              </ul>
            </li>
            <!-- 消息-->
            <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">0</span></a>
              <ul aria-labelledby="notifications" class="dropdown-menu">
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
        <li><a href="forms.jsp"> <i class="icon-padnote"></i>个人信息 </a></li>
        <li  class="active"><a href="control.jsp"> <i class="icon icon-list-1"></i>设备控制 </a></li>
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
          <h2 class="no-margin-bottom">设备控制</h2>
        </div>
      </header>
        <!-- Breadcrumb-->
        <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="barton.jsp">实时数据</a></li>
                <li class="breadcrumb-item active">设备控制            </li>
            </ul>
        </div>
      <!-- Forms Section-->
      <section class="forms">
        <div class="container-fluid">
          <div class="row">
            <!-- Basic Form-->
            <div class="col-lg-6">
              <div class="card" style="height: 350px">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">控制灯光一</h3>
                </div>
                <div class="card-body">
                    <div style="max-width: 99%">
                        <div style="min-width: 45%;float: left;">
                            请设置设备开启时间段：<input type="date" min="<%=now%>" max="2021-01-01" value="<%=now%>" id="test1" style="display: block"><!--min 和max属性设置上下限 日期的value值是xxxx-xx-xx 时间的value值是xx：xx-->
                            <input type="time" min="<%=time%>" max="23:59" value="<%=time%>" id="test2" style="display: block">
                            <button onclick="kaiqi()">确认设置</button>
                            <p><span id="test3" style="font-size: 20px"></span></p>
                            <p><span id="test7" style="font-size: 20px"></span></p>
                        </div>
                        <div style="min-width: 45%;float: right;">
                            请设置设备关闭时间段：<input type="date" min="<%=now%>" max="2021-01-01" value="<%=now%>" id="test5" style="display: block"><!--min 和max属性设置上下限 日期的value值是xxxx-xx-xx 时间的value值是xx：xx-->
                            <input type="time" min="<%=time%>" max="23:59" value="<%=time%>" id="test6" style="display: block">
                            <button onclick="guanbi()">确认设置</button>
                        </div>
                    </div>
                      <c:if test="${sessionScope.stutas == 2}">
                        <label class="switch"  style="float: right;margin: -10px 40px 0 0">
                            <input type="checkbox" />
                            <div class="slider round"></div>
                        </label>
                      </c:if>
                        <c:if test="${sessionScope.stutas == 1}">&nbsp;</c:if>
                        <c:if test="${sessionScope.stutas == 0}">&nbsp;</c:if>
                </div>
              </div>
            </div>
            <!-- Horizontal Form-->
            <div class="col-lg-6">
              <div class="card" style="height: 350px">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">控制风扇一</h3>
                </div>
                <div class="card-body">
                    <div style="max-width: 99%">
                        <div style="min-width: 45%;float: left;">
                            请设置设备开启时间段：<input type="date" min="<%=now%>" max="2021-01-01" value="<%=now%>" id="fstime1" style="display: block"><!--min 和max属性设置上下限 日期的value值是xxxx-xx-xx 时间的value值是xx：xx-->
                            <input type="time" min="<%=time%>" max="23:59" value="<%=time%>" id="fstime2" style="display: block">
                            <button onclick="fsstarttime()">确认设置</button>
                            <p><span id="feview" style="font-size: 20px"></span></p>
                            <p><span id="feviews" style="font-size: 20px"></span></p>
                        </div>
                        <div style="min-width: 45%;float: right;margin-bottom: 20px">
                            请设置设备关闭时间段：<input type="date" min="<%=now%>" max="2021-01-01" value="<%=now%>" id="fstime3" style="display: block"><!--min 和max属性设置上下限 日期的value值是xxxx-xx-xx 时间的value值是xx：xx-->
                            <input type="time" min="<%=time%>" max="23:59" value="<%=time%>" id="fstime4" style="display: block">
                            <button onclick="fsclosetime()">确认设置</button>
                        </div>
                    </div>
                        <c:if test="${sessionScope.stutas == 2}">
                            <label class="switch"  style="float: right;margin: -10px 40px 0 0">
                                <input type="checkbox" />
                                <div class="slider round"></div>
                            </label>
                        </c:if>
                        <c:if test="${sessionScope.stutas == 1}">&nbsp;</c:if>
                        <c:if test="${sessionScope.stutas == 0}">&nbsp;</c:if>
                </div>
              </div>
            </div>
           <!-- &lt;!&ndash; Inline Form&ndash;&gt;
            <div class="col-lg-8">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard3" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">Inline Form</h3>
                </div>
                <div class="card-body">
                  <form class="form-inline">
                    <div class="form-group">
                      <label for="inlineFormInput" class="sr-only">Name</label>
                      <input id="inlineFormInput" type="text" placeholder="Jane Doe" class="mr-3 form-control">
                    </div>
                    <div class="form-group">
                      <label for="inlineFormInputGroup" class="sr-only">Username</label>
                      <input id="inlineFormInputGroup" type="text" placeholder="Username" class="mr-3 form-control">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            &lt;!&ndash; Modal Form&ndash;&gt;
            <div class="col-lg-4">
              <div class="card">
                <div class="card-close">
                  <div class="dropdown">
                    <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                    <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                  </div>
                </div>
                <div class="card-header d-flex align-items-center">
                  <h3 class="h4">Modal Form</h3>
                </div>
                <div class="card-body text-center">
                  <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary">Form in simple modal </button>-->
                  <!-- Modal-->
                 <!-- <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
                    <div role="document" class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 id="exampleModalLabel" class="modal-title">设置灯光开关时间</h4>
                          <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                          <p>Lorem ipsum dolor sit amet consectetur.</p>
                          <form>
                            <div class="form-group">
                              <label>Email</label>
                              <input type="email" placeholder="Email Address" class="form-control">
                            </div>
                            <div class="form-group">
                              <label>Password</label>
                              <input type="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                              <input type="submit" value="Signin" class="btn btn-primary">
                            </div>
                          </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" data-dismiss="modal" class="btn btn-secondary">Close</button>
                          <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                      </div>
                    </div>
                  </div>-->

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
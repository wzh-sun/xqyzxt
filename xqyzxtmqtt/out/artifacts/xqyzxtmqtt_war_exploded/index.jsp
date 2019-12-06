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
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="What are you looking for..." class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="index.jsp" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><strong><span>主页信息</span></strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>导航</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <!-- Navbar Menu -->
                <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                    <!-- Search-->
                    <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                    <!-- Notifications-->
                    <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">0</span></a>
                        <ul aria-labelledby="notifications" class="dropdown-menu">

                            <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center">
                                <strong>查看全部通知 </strong></a></li>
                        </ul>
                    </li>
                    <!-- Messages                        -->
                    <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">0</span></a>
                        <ul aria-labelledby="notifications" class="dropdown-menu">
                            <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center">
                                <strong>阅读全部信息 </strong></a></li>
                        </ul>
                    </li>
                    <!-- Languages dropdown    -->
                    <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/CN.png" alt="English"><span class="d-none d-sm-inline-block">中文（简体）</span></a>
                        <ul aria-labelledby="languages" class="dropdown-menu">
                            <li><a rel="nofollow" href="#" onclick="return confirm('抱歉，还没写别的语言');" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>
                            <li><a rel="nofollow" href="#" onclick="return confirm('抱歉，还没写别的语言');" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>
                        </ul>
                    </li>
                    <!-- Logout    -->
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/logout" onclick="return confirm('是否退出系统');" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
                </ul>
            </div>
          </div>
        </nav>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
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
          <!-- Sidebar Navidation Menus--><span class="heading">菜单</span>
          <ul class="list-unstyled">
                    <li class="active"><a href="index.jsp"> <i class="icon-home"></i>首页</a></li>
                    <li><a href="index.jsp" onclick="return confirm('请选择相应的鸡舍');"> <i class="icon-grid"></i>历史记录</a></li>
                    <li><a href="index.jsp" onclick="return confirm('请选择相应的鸡舍');"> <i class="fa fa-bar-chart"></i>数据对照</a></li>
                    <li><a href="index.jsp" onclick="return confirm('请选择鸡舍');"> <i class="icon-padnote"></i>个人信息</a></li>
                    <li><a href="index.jsp" onclick="return confirm('请选择相应的鸡舍');"> <i class="icon icon-list-1"></i>设备控制 </a></li>
          </ul>
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">鸡舍</h2>
            </div>
          </header>
          <!-- 鸡舍-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
                <!-- Item -->
                  <c:forEach var="bartons" items="${bartonList}">
                <div class="col-xl-3 col-sm-6">
                      <div class="item d-flex align-items-center"  onclick="window.open('${pageContext.request.contextPath}/bartonId?bartonId=${bartons.bartonId}');">
						<div class="barton1">
						  <div>
							<img src="img/favicon.ico" alt="">
						  </div>
						  <div class="span-2em">
							<div class="span-1em">
							  <p align="center">${bartons.bartonId}号鸡舍</p>
							</div>
						  </div>
						</div>
                  </div>
                </div>
                  </c:forEach>
              </div>
            </div>
          </section>
		  <!-- -->
          <section class="no-padding-top">
            <div class="container-fluid">
              <div class="col-lg-6" style="max-width:100%;padding:15px 0px;">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">鸡舍列表</h3>
                    </div>
                    <div class="card-body">
                      <div class="table-responsive">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>序号</th>
                              <th>鸡舍名称</th>
                              <th>鸡舍所属组</th>
                              <th>鸡舍所用者</th>
                                <th>操作</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach var="barton" items="${bartonList}">
                            <tr>
                              <th scope="row">${barton.bartonId}</th>
                              <td>${barton.bartonName}</td>
                              <td>${barton.bartonGroup}</td>
                              <td>${barton.bartonUser}</td>
                                <c:if test="${barton.bartonStutas == 1}">
                                    <td style="color: #00A4FF;" onclick="return confirm('开发中..');">修改</td>
                                </c:if>
                                <c:if test="${barton.bartonStutas == 2}">
                                    <td style="color: #00A4FF;">查看</td>
                                </c:if>
                            </tr>
                          </c:forEach>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </section>
		  
          <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>智慧畜禽养殖系统 &copy; 2019</p>
                </div>
                <div class="col-sm-6 text-right">
                  <p>网站备案号： <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action"
                           target="_blank" title="备案信息">赣ICP备19000946号 </a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                <img src="img/batb.png">&nbsp;&nbsp;&nbsp;赣公网安备<a href="http://www.beian.gov.cn/portal/registerSystemInfo?COLLCC=839558812&recordcode=36102402000002"
                        title="公网备案" target="_blank">&nbsp;&nbsp; 36102402000002号</a></p>
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
    <script src="js/charts-home.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>
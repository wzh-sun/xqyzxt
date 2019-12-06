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
	  <script type="text/javascript" language="JavaScript">
          function setWarningInnerHTML(innerHTML) {
              document.getElementById('warning1').innerHTML=innerHTML+"℃";
          }
      </script>
      <script>
          <%--<c:forEach var="list" items="${sdlist}">
          wendu = ${list};
          </c:forEach>--%>
          var test1;
          websocket = new WebSocket("ws://localhost:8080/websocket");
          websocket.onmessage = function (event) {
              // setMessageInnerHTML(event.data);
              test1 = event.data;
              setWarningInnerHTML(event.data);
          };
      </script>
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
                <!-- Navbar Brand --><a href="barton.jsp" class="navbar-brand d-none d-sm-inline-block">
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
					<li class="nav-item"><a href="login.jsp" class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i class="fa fa-sign-out"></i></a></li>
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
                    <li class="active"><a href="barton.jsp"> <i class="icon-home"></i>实时数据</a></li>
                    <li><a href="tables.jsp"> <i class="icon-grid"></i>历史记录</a></li>
                    <li><a href="charts.jsp"> <i class="fa fa-bar-chart"></i>数据对照</a></li>
                    <li><a href="forms.jsp"> <i class="icon-padnote"></i>个人信息</a></li>
                    <li><a href="control.jsp"> <i class="icon icon-list-1"></i>设备控制 </a></li>
          </ul>
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">${sessionScope.bartonIds}号鸡舍</h2>
            </div>
          </header>
		  <section style="margin-top:-50px;">
				<!-- 鸡舍数据-->
					<div class="date-list" style=" max-width:100%;clear:both;">
					<!--选项卡-->
					<div class="actions">
						<ul class="action">
							<li class="actiones add-left" style="width:140px;">温度</li>
							<li style="width:140px;">湿度</li>
							<li style="width:140px;">气压</li>
							<li style="width:140px;">风速</li>
							<li style="width:140px;">二氧化碳</li>
							<li style="width:140px;">光照</li>
							<li style="background-color:white;width:436px;float:right;"></li>
						</ul>
					</div>
					<div class="botton">
						<!--温度-->
						<div class="date select" style="height:460px;">
							<div id="container" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span id="warning1" style="font-size: 30px;"></span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;14:15</span>
								</div>
							</div>
							<div class="yuzhi" style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
							</div>
						</div>
						<!--湿度-->
						<div class="date" style="height:460px;">
							<div id="container2" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span style="font-size: 30px;">20%rh</span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;15:15</span>
								</div>
							</div>
							<div class="yuzhi" style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
							</div>
						</div>
						<!--气压-->
						<div class="date" style="height:460px;">
							<div id="container3" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span style="font-size: 30px;">32 Pa</span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;16:15</span>
								</div>
							</div>
							<div class="yuzhi"  style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
							</div>
						</div>
						<!--风速-->
						<div class="date" style="height:460px;">
							<div id="container4" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span style="font-size: 30px;">100m/s</span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;17:15</span>
								</div>
							</div>
							<div class="yuzhi"  style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
							</div>
						</div>
						<!--二氧化碳-->
						<div class="date" style="height:460px;">
							<div id="container5" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span style="font-size: 30px;">10 kPa</span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;18:15</span>
								</div>
							</div>
							<div class="yuzhi"  style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
							</div>
						</div>
						<!--光照-->
						<div class="date" style="height:460px;">
							<div id="container6" style="min-width:840px;height:400px;position: absolute;"></div>
							<!--警告的指示灯-->
							<div class="frame" style="margin-top:-10px;">
								<div class="place-fixed" align="center">
									<span style="font-size: 30px;">36 Lux</span><br>
									<span style="font-size: 8px;">2019-3-2 &nbsp;19:15</span>
								</div>
							</div>
							<div class="yuzhi"  style="margin-top:120px;">
								<h3 style="text-align: center">阈值管理</h3>
								<span>设置最高值 <input type="text"/></span>
								<span>设置最低值 <input type="text"/></span>
								<em>
									<button>保存</button>
									<button>重置</button>
								</em>
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
	
	
	<!--数据图表-->
		<!--<script src="js/jquery-1.12.4.js"></script>-->
		<script src="js/index.js"></script>
		<script src="js/chart/data.js"></script>
		<script src="js/chart/exporting.js"></script>
		<script src="js/chart/highcharts.js"></script>
		<script src="js/chart/highcharts-more.js"></script>
		<script src="js/chart/highcharts-zh_CN.js"></script>
		<!--<script src="js/chart/jquery-1.8.3.min.js"></script>-->
		<script src="js/list1.js"></script>
		<script src="js/list2.js"></script>
		<script src="js/list3.js"></script>
		<script src="js/list4.js"></script>
		<script src="js/list5.js"></script>
		<script src="js/list6.js"></script>
  </body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  </head>
  <body>
  <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>智慧畜禽养殖系统</h1>
                  </div>
                  <p>ZHIHUIXUQINYANGZHIXITONG</p>
                </div>
              </div>
            </div>
            <!-- 主体内容   -->
              <div class="col-lg-6 bg-white">
                  <div class="form d-flex align-items-center">
                      <div class="content">
                          <form method="post" class="form-validate" action="${pageContext.request.contextPath}/login">
                              <div class="form-group">
                                  <input id="loginUsername" type="text" name="username" required data-msg="请输入您的账号" class="input-material">
                                  <label for="loginUsername" class="label-material">账号</label>
                              </div>
                              <div class="form-group">
                                  <input id="loginPassword" type="password" name="password" required data-msg="密码不能为空" class="input-material">
                                  <label for="loginPassword" class="label-material">密码</label>
                              </div><input type="submit" id="login" class="btn btn-primary" value="登录"/>
                              <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                          </form><a href="#" onclick="return confirm('忘记密码？请联系服务器管理员 187 7945 5583以找回密码')" class="forgot-pass">忘记密码？</a><br><small>还没有账号 ？</small><a href="#" onclick="return confirm('抱歉，本系统没有注册账号的功能，请联系管理员：18779455583')" class="signup">注册一个吧</a>
                      </div>
                  </div>
              </div>
          </div>
        </div>
      </div>
      <div class="copyrights text-center">
        <p>智慧畜禽养殖系统<a href="#" class="external"></a>
          <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
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
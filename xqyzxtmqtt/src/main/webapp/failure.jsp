<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录失败</title>
    <meta http-equiv="refresh" content="5;url=http://www.wzhsun.club/">
    <style>
        ::-webkit-scrollbar{
            display:none;
        }
        body {
            background-color: #e5e5e5;
        }
        .area{
            width: 500px;
            height: 200px;
            background-color: white;
            border: 1px solid #eef0e6;
            margin: 0 auto;
            margin-top: 100px;
            box-shadow: 0px 5px 20px 0px #4b4b4b;
        }
        p{
            text-align: center;
            margin-top: 30px;
        }
        button{
            float: right;
            margin-top: 95px;
            margin-right: 20px;
            width: 55px;
            height: 30px;
            background-color: #cccccc;
        }
        a{
            color: black;
        }
        .btn {
            display: inline-block;
            padding: .3em .5em;
            background-image: linear-gradient(#ddd, #bbb);
            border: 1px solid rgba(0,0,0,.2);
            border-radius: .3em;
            box-shadow: 0 1px white inset;
            text-align: center;
            text-shadow: 0 1px 1px black;
            color:white;
            font-weight: bold;
        }
        .btn:active{
            box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;
            border-color: rgba(0,0,0,.3);
            background: #bbb;
        }
    </style>
</head>
<body>
<div>
    <div class="area">
        <p>登录失败!请重新登录,5秒后跳转到登录页面</p>
        <p>联系管理员找回账号密码</p>
        <a href="login.jsp"><button class="btn">确定</button></a>
    </div>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: #1a3e60;
            text-align: center;
        }
        div{
            display: inline-block;
        }

        .login_div{
            position: relative;
            width: 360px;
            height: 380px;
            top: 125px;
        }
        .span1{
            color: white;
            font-size: 45px;
            display: block;
            padding-bottom: 10px;
        }
        .span2{
            color: rgb(37, 144, 232);
        }
        .student_login{
            margin: 0;
            padding: 0;
            position: relative;
            top: 9px;
            left: -78px;
            width: 100px;
            height: 25px;
            border: none;
            color: #7592ae;
            background-color: #1a3e60;
        }
        .teacher_login{
            margin: 0;
            padding: 0;
            position: relative;
            top: 9px;
            left: -81px;
            width: 100px;
            height: 25px;
            border: none;
            color: #7592ae;
            background-color: #1a3e60;
        }

        .student_login:hover{
            cursor: pointer;
            color: #2f94ec;
        }
        .teacher_login:hover{
            cursor: pointer;
            color: #2f94ec;
        }
        .active{
            color: #2f94ec;
        }
        .student_login a{
            text-decoration: none;
        }
        .hr{
            width: 360px;
            height: 2px;
            background-color:rgb(37, 144, 232);
            margin-bottom: 5px;
        }
        .login_form_div{
            width: 360px;
            height: 260px;
            background-color: #003459;
        }

        .form_div{
            position: relative;
            top: 15px;
            padding-top: 15px;
            margin-bottom: 15px;
        }
        input{
            width: 300px;
            height: 30px;
            margin: 2px,0;
        }
        .icon{
            position: relative;
            top:2.5px;
            width: 30px;
            height: 35.2px;
            display: inline-block;
            background-color: #fff;
            border-color: transparent;
            border-radius: 4%;
            text-align: center;
            line-height: 35.2px;
        }

        button{
            width: 320px;
            height: 26px;
            border-radius: 3%;
            background-color: #2f94ec;
            font-size: 15px;
            color: white;
            border:none
        }
        p{
            color: white;
            font-size: 8px;
            padding-bottom: 5px;
            margin-top: 10px;
        }
        a{
            color: white;
            font-size: 16px;
            text-decoration: none;
        }
        img{
            width: 15px;
            height: 15px;
            margin: 0;
            padding: 0;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="login_div">
    <span class="span1">作业管理系统</span>
    <button class="student_login" id="btn1"><a href="login.jsp" class="active">学生登录</a></button>
    <button class="teacher_login" id="btn2"><a href="tlogin.jsp">教师登录</a></button>
    <div class="hr"></div>

    <div class="login_form_div">
        <div class="form_div">
            <form action="Login" method="post" accept-charset="UTF-8">
                <div class="icon"><img src="./picture/用户名.png" alt="a"></div><input type="text" name="username" placeholder="请输入用户名" required>
                <br>
                <div class="icon"><img src="./picture/密码.png" alt="a"></div><input type="password" name="password" placeholder="请输入密码" required>
                <br>
                <br>
                <button>登录</button>
            </form>
        </div>
        <p>tip:只有用户在登录后开启个人中心的密码并设置密码后，才能使用本系统的登录，否则请使用中央认证登录按钮。</p>
        <a href="team.jsp">技术支持：郑凯祥团队</a>
    </div>
    <div>
    </div>
</div>
</body>
</html>
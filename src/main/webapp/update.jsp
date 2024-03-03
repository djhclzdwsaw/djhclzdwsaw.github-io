<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>修改密码</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .left-nav {
            float: left;
            width: 256px;
            height: 100vh;
            background-color: #334869;
            padding: 15px 0 0;
            text-align: center;
            color: white;
        }

        h1{
            padding-bottom: 15px;
        }

        .nav-item {
            height: 50px;
            list-style-type: none;
            background-color: #334869;
            transition: background-color 0.5s;
        }

        .nav-item:hover {
            background-color: #233148;
        }
        .left_nav_active{
            height: 50px;
            list-style-type: none;
            background-color:#233148;
            transition: background-color 0.5s;
        }

        .nav-item a {
            display: flex;
            align-items: center;
            height: 100%;
            text-decoration: none;
            color: white;
            padding-left: 20px;
        }

        .nav-item img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .left_nav_active a {
            display: flex;
            align-items: center;
            height: 100%;
            text-decoration: none;
            color: white;
            padding-left: 20px;
        }

        .left_nav_active img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        /* New Div Boxes */

        .box {
            float: right;
        }
        #box1 {
            height: 60px;
            width: calc(100% - 256px);
            background-color: #ffffff;

        }
        #box2 {
            height: 40px;
            width: calc(100% - 256px);
            background-color: #ffffff;
            border: 1px solid rgb(237, 237, 237);
        }
        #box3 {
            height: 622px;
            width: calc(100% - 256px);
            background-color: #e8e8e8;
        }

        .H2{
            position: relative;
            display: inline-block;
            top:-28px;
            left: 700px;
        }
        .box1_user{
            position: relative;
            top: 10px;
            left: 750px;
            width: 40px;
            height: 40px;
            display: inline-block;
            border-radius: 50%;
            background-color: rgb(98, 59, 163);
            text-align: center;
            color: white;
            line-height: 40px;
        }
        .box1_user:hover{
            cursor: pointer;
        }
        .box1_user:hover .box1_user_ul{
            display: block;
        }
        .box1_user_ul{
            display: none;
            border-radius: 2%;
            z-index: 1;
            position: absolute;
            top: 55px;
            right: -25px;
            list-style-type: none;
            width: 90px;
            height: 80px;
            background-color: #f0f0f0;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.4);
        }
        .box1_user ul li{
            display: inline-block;
            width: 90px;
            height: 30px;
            text-align: left;
            padding-left: 15px;
            margin-top: 5px;
            margin-bottom: 5px;
            cursor: pointer;
            line-height: 30px;
        }
        .box1_user ul li a{
            width: 90px;
            height: 30px;
            text-decoration: none;
            color: black;

            font-size: 10px;
        }
        .box1_user ul li:hover{
            background-color: #c7c7c7;
        }




        .box2_nav_bar{
            position: relative;
            top: -41px;
            left:110px;
            width: 1000px;
            height: 40px;
            background-color: #dbdbdb;
            border: 2px solid #ababab;
            padding-top: 5px;
            /* vertical-align: middle; */
        }
        .box2_button1{
            position: relative;
            top:-1px;
            left: 84px;
            height: 40px;
            width: 25px;
            font-size: 20px;
        }
        .box2_button2{
            position: relative;
            top: -81px;
            left: 1111px;
            height: 40px;
            width: 25px;
            font-size: 20px;
        }
        .box2_nav_bar a:hover{
            color: #383838;
        }
        .navbar_button_box_first{
            position: relative;
            top: -1.5px;
            left: 5px;
            width: 100px;
            height: 30px;
            display: inline-block;
            background-color: #f4f4f4;
            vertical-align: middle;
        }
        .navbar_button_box_first a{
            width: 100px;
            height: 30px;
            text-decoration: none;
            display: inline-block;
            color: #000000;
        }
        .navbar_button_box_second{
            position: relative;
            top: -1.5px;
            left: 5px;
            width: 150px;
            height: 30px;
            display: inline-block;
            background-color: #f4f4f4;
            vertical-align: middle;
        }
        .navbar_button_box_second a{
            width: 150px;
            height: 30px;
            text-decoration: none;
            display: inline-block;
            color: #000000;
        }
        .navbar_button_box_third{
            position: relative;
            top: -1.5px;
            left: 5px;
            width: 150px;
            height: 30px;
            display: inline-block;
            background-color: #f4f4f4;
            vertical-align: middle;
        }
        .navbar_button_box_third a{
            width: 150px;
            height: 30px;
            text-decoration: none;
            display: inline-block;
            color: #000000;
        }
        .navbar_button_box_fouth{
            position: relative;
            top: -1.5px;
            left: 5px;
            width: 120px;
            height: 30px;
            display: inline-block;
            background-color: #f4f4f4;
            vertical-align: middle;
        }
        .navbar_button_box_fouth a{
            width: 100px;
            height: 30px;
            text-decoration: none;
            display: inline-block;
            color: #000000;
        }
        .navbar_button_circle{
            position: relative;
            top: 2px;
            left: 5px;
            display: inline-block;
            width: 15px;
            height: 15px;
            border-radius: 50%;
            background-color: #c6c6c6;
            border: 2px solid #ccc;
            vertical-align: middle;
            margin-right: 10px;
        }
        .nav_button_circle_choose{
            background-color: #2e95f5;
            border: 2px solid #2e95f5;
        }
        .text{
            position: relative;
            top: 2px;
            vertical-align: middle;
        }


        .con_contain{
            position: relative;
            top: 10px;
            left: 15px;
            height: 580px;
            width: 1200px;
            display: inline-block;
            background-color: #ffffff;
        }
        .con_contain:hover{
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .con_contain form{

        }
        .input1{
            position: relative;
            width: 200px;
            height: 30px;
            left: 470px;
            top: 150px;
        }
        .input2{
            position: relative;
            width: 200px;
            height: 30px;
            left: 470px;
            top: 175px;
        }
        .button1{
            position: relative;
            width: 80px;
            height: 30px;
            background-color: #55b8f1;
            color: white;
            border: none;
            border-radius: 5%;
            cursor: pointer;
            left: 530px;
            top: 200px;
        }




    </style>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Calendar cal = Calendar.getInstance();
    //获取时间
    int hour = cal.get(Calendar.HOUR_OF_DAY);
    String time = "";
    if (hour >= 6 && hour < 12) {
        time = "早上好，欢迎来到作业管理系统";
    } else if (hour >= 12 && hour < 14) {
        time = "中午好，欢迎来到作业管理系统";
    } else if (hour >= 14 && hour < 18) {
        time = "下午好，欢迎来到作业管理系统";
    } else if (hour >= 18 && hour < 22) {
        time = "晚上好，欢迎来到作业管理系统";
    }else {
        time = "夜深了，要注意休息哦";
    }
    // 获取当前时间
    Date date = new Date();
    // 创建日期格式化对象，指定输出格式为年-月-日
    SimpleDateFormat type = new SimpleDateFormat("yyyy-MM-dd E");
    // 格式化当前时间并输出
    String time1 = type.format(date);
%>


<div class="left-nav">
    <h1>作业管理系统</h1>
    <ul class="nav-ul">
        <li class="nav-item"><a href="home-home.jsp">首页</a></li>
        <li class="nav-item"><a href="home-course.jsp">已选课程列表</a></li>
        <li class="nav-item"><a href="home-homework.jsp">作业计划列表</a></li>
    </ul>
</div>

<div class="box" id="box1">
    <h2 class="H2">现在是：<%=time1%></h2>
    <div class="box1_user"><%=session.getAttribute("xing")%>
        <ul class="box1_user_ul">
            <li><a href="update.jsp">修改密码</a></li>
            <li><a href="login.jsp">退出登录</a></li>
        </ul>
    </div>
</div>


<div class="box" id="box2">
    <a href="#"><button class="box2_button1"> < </button></a>
    <div class="box2_nav_bar" id="navBar">


        <div class="navbar_button_box_first">
            <a href="home-home.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">首页</span>
            </a>
        </div>
        <div class="navbar_button_box_second">
            <a href="home-course.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">已选课程列表</span>
            </a>
        </div>
        <div class="navbar_button_box_third">
            <a href="home-homework.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">作业计划列表</span>
            </a>
        </div>
        <div class="navbar_button_box_fouth">
            <a href="update.jsp">
                <div class="navbar_button_circle nav_button_circle_choose"></div>
                <span class="text">修改密码</span>
            </a>
        </div>
    </div>
    <a href="home-course.jsp"><button class="box2_button2">></button></a>
</div>





<div class="box" id="box3">
    <div class="con_contain">
        <form action="update" method="post" accept-charset="UTF-8">
            <input class="input1" type="text" name="username" placeholder="请输入用户名" value="${sessionScope.username}" required>
            <br>
            <input class="input2" type="password" name="password" placeholder="请输入新密码" required>
            <br>
            <button class="button1">修改密码</button>
        </form>

    </div>

</div>








<script>
    var box1UserUl = document.querySelector('.box1_user_ul');
    var box1User = document.querySelector('.box1_user');
    var timeoutId;
    box1User.addEventListener('mouseenter', function() {
        box1UserUl.style.display = 'block';
        clearTimeout(timeoutId);
    });

    box1User.addEventListener('mouseleave', function() {
        timeoutId = setTimeout(function() {
            box1UserUl.style.display = 'none';
        }, 1000);
    });

    box1UserUl.addEventListener('mouseenter', function() {
        clearTimeout(timeoutId);
    });

    box1UserUl.addEventListener('mouseleave', function() {
        box1UserUl.style.display = 'none';
    });
</script>

</body>
</html>

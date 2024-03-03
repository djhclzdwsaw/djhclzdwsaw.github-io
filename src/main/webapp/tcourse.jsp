<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>作业管理系统</title>
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
        .H2{
            position: relative;
            display: inline-block;
            top: -28px;
            left: 700px;
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
        p{
            position: relative;
            left: 30px;
            top: 30px;
            font-size: 20px;
            font-weight:700;
        }
        .course_hr{
            left: 20px;
            top: 35px;
            position: relative;
            width: 1120px;
            height: 2px;
            background-color: #54afff;
            display: inline-block;
        }

        .table_div{
            position: relative;
            top: 60px;
            left:30px;
            display: inline-block;
            height: 399px;
            width: 1100px;
            background-color: #ffffff;
        }

        table {

            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th{
            font-weight:700;
            background-color: #54afff;
            color: rgb(0, 0, 0);
            height: 40px;

        }
        td{
            height: 44px;
            text-align: center;
        }
        td,th{
            border-bottom: 1px solid #ddd;
        }
        td button{
            width: 100px;
            height: 30px;
            background-color: #5cb1fb;
            border: none;
            color: white;
            cursor: pointer;
        }


        tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        .pagination {
            position: relative;
            top: 60px;
            left: -400px;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination button {
            margin: 0 5px;
            padding: 5px 10px;
            background-color: #54afff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .pagination input {
            width: 40px;
            text-align: center;
            margin-right: 5px;
        }

        .form_button{
            position: relative;
            top:-74px;
            left: 100px;
        }










        .form_addCourse_button{
            position: relative;
            top: -74px;
            left: 120px;
        }
        .form_div{
            position: relative;
            left: 300px;
            top: -550px;
            width: 400px;
            height: 550px;
            background-color: #fafafa;
            border: 1px solid black;
            z-index: 1;
        }
        .form_div:hover{
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .form_div form {
            width: 70%;

        }
        .form_div p{
            margin: 0;
        }
        .form_div_p1{
            position: relative;
            top: 15px;
            left: 24px;
            font-size: 30px;
            font-weight:900;
        }
        .form_div_hr{
            position: relative;
            left: 10px;
            top:10px;
            width: 420px;
            height: 1.5px;
            display: inline-block;
            background-color: #212020;
        }
        .form_div_p2{
            position: relative;
            left: 10px;
            top: 20px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_p3{
            position: relative;
            left: 10px;
            top: 40px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_p4{
            position: relative;
            left: 10px;
            top: 60px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_p5{
            position: relative;
            left: 10px;
            top: 80px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_p6{
            position: relative;
            left: 10px;
            top: 95px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_p7{
            position: relative;
            left: 10px;
            top: 110px;
            font-size: 20px;
            font-weight: 600;
        }
        .form_div_input1{
            position: relative;
            left: 10px;
            top: 30px;
        }
        .form_div_input2{
            position: relative;
            left: 10px;
            top: 50px;
        }
        .form_div_input3{
            position: relative;
            left: 10px;
            top: 70px;
        }
        .form_div_input4{
            position: relative;
            left: 10px;
            top: 80px;
        }
        .form_div_input5{
            position: relative;
            left: 10px;
            top: 100px;
        }
        .form_div_input6{
            position: relative;
            left: 10px;
            top: 120px;
        }
        .form_div button {
            display: block;
            width:80px;
            height: 30px;
            cursor: pointer;
        }
        .form_div_button1{
            position: relative;
            left: 300px;
            top: 150px;
            background-color: #45c7fe;
            border: none;
            border-radius: 8%;
            font-size: 16px;
            color: whitesmoke;
        }
        .form_div_button2{
            position: relative;
            left: 200px;
            top: 120px;
            background-color: #ffffff;
            border: none;
            border-radius: 8%;
            font-size: 16px;
            color: rgb(0, 0, 0);

        }









        .form1_div{
            position: relative;
            left: 300px;
            top: -600px;
            width: 400px;
            height: 700px;
            background-color: #fafafa;
            border: 1px solid black;
            z-index: 1;
        }
        .form1_div:hover{
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .form1_div form {
            width: 70%;

        }
        .form1_div p{
            margin: 0;
        }
        .form1_div_p1{
            position: relative;
            top: 15px;
            left: 24px;
            font-size: 30px;
            font-weight:900;
        }
        .form1_div_hr{
            position: relative;
            left: 10px;
            top:10px;
            width: 420px;
            height: 1.5px;
            display: inline-block;
            background-color: #212020;
        }
        .form1_div_p2{
            position: relative;
            left: 10px;
            top: 20px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p3{
            position: relative;
            left: 10px;
            top: 40px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p4{
            position: relative;
            left: 10px;
            top: 60px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p5{
            position: relative;
            left: 10px;
            top: 80px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p6{
            position: relative;
            left: 10px;
            top: 95px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p7{
            position: relative;
            left: 10px;
            top: 115px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p8{
            position: relative;
            left: 10px;
            top: 125px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p9{
            position: relative;
            left: 10px;
            top: 130px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_p10{
            position: relative;
            left: 10px;
            top: 130px;
            font-size: 20px;
            font-weight: 600;
        }
        .form1_div_input1{
            position: relative;
            left: 10px;
            top: 30px;
        }
        .form1_div_input2{
            position: relative;
            left: 10px;
            top: 50px;
        }
        .form1_div_input3{
            position: relative;
            left: 10px;
            top: 70px;
        }
        .form1_div_input4{
            position: relative;
            left: 10px;
            top: 85px;
        }
        .form1_div_input5{
            position: relative;
            left: 10px;
            top: 100px;
        }
        .form1_div_input6{
            position: relative;
            left: 10px;
            top: 120px;
        }
        .form1_div_input7{
            position: relative;
            left: 10px;
            top: 130px;
        }
        .form1_div_input8{
            position: relative;
            left: 10px;
            top: 130px;
        }
        .form1_div_input9{
            position: relative;
            left: 10px;
            top: 130px;
        }
        .form1_div_input10{
            position: relative;
            left: 10px;
            top: 120px;
        }
        .form1_div button {
            display: block;
            width:80px;
            height: 30px;
            cursor: pointer;
        }
        .form1_div_button1{
            position: relative;
            left: 300px;
            top: 150px;
            background-color: #45c7fe;
            border: none;
            border-radius: 8%;
            font-size: 16px;
            color: whitesmoke;
        }
        .form1_div_button2{
            position: relative;
            left: 200px;
            top: 120px;
            background-color: #ffffff;
            border: none;
            border-radius: 8%;
            font-size: 16px;
            color: rgb(0, 0, 0);

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
        <li class="nav-item"><a href="thome.jsp" >首页</a></li>
        <li class="left_nav_active"><a href="#" >课程列表</a></li>
        <li class="nav-item"><a href="twork.jsp" >作业列表</a></li>
    </ul>
</div>

<div class="box" id="box1">
    <h2 class="H2">现在是：<%=time1%></h2>
    <div class="box1_user"><%=session.getAttribute("username")%>
        <ul class="box1_user_ul">
            <li><a href="tlogin.jsp">退出登录</a></li>
        </ul>
    </div>
</div>


<div class="box" id="box2">
    <a href="thome.jsp.jsp"><button class="box2_button1"> < </button></a>
    <div class="box2_nav_bar" id="navBar">


        <div class="navbar_button_box_first">
            <a href="thome.jsp.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">首页</span>
            </a>
        </div>
        <div class="navbar_button_box_second">
            <a href="#">
                <div class="navbar_button_circle nav_button_circle_choose"></div>
                <span class="text">课程列表</span>
            </a>
        </div>
        <div class="navbar_button_box_third">
            <a href="twork.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">作业列表</span>
            </a>
        </div>
    </div>
    <a href="twork.jsp"><button class="box2_button2">></button></a>
</div>





<div class="box" id="box3">
    <div class="con_contain">
        <p>课程列表</p>
        <div class="course_hr"></div>
        <div class="table_div">
            <form action="tcourse" method="post" accept-charset="UTF-8">
                <input  type="text" name="username" value="${sessionScope.username}" style="display: none">
                <button class="form_button" type="submit">查看课程计划</button>
                <button class="form_addCourse_button"  type="button" onclick="Display()">添加课程信息</button>
                <table>
                    <tr>
                        <th>课程名称</th>
                        <th>课程类型</th>
                        <th>课程性质</th>
                        <th>考试类型</th>
                        <th>学年</th>
                        <th>学生</th>
                    </tr>

                    <c:forEach var="course" items="${courses}">
                        <!-- <%--                course依次赋值courses内容--%> -->
                        <tr>
                            <td>${course.coursename}</td>
                            <td>${course.coursetype}</td>
                            <td>${course.coursenature}</td>
                            <td>${course.examtype}</td>
                            <td>${course.year}</td>
                            <td>${course.student}</td>
                            <td><button type="button" onclick="Display3('${course.coursename}')">添加作业信息</button></td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
        </div>
        <div class="pagination" id="pagination">
            <button id="previousPage">&lt;</button>
            <span id="pageIndicator"></span>
            <button id="nextPage">&gt;</button>
            <input type="number" id="jumpInput">
            <button id="jumpButton">跳页</button>
        </div>
        <div class="form_div" id="form_div" style="display: none">
            <form id="form" action="addcourse" method="post" accept-charset="UTF-8">
                <p class="form_div_p1">添加课程信息</p>
                <div class="form_div_hr"></div>
                <p class="form_div_p2">课程名</p>
                <input class="form_div_input1" type="text" name="coursename" placeholder="请输入课程名" required>
                <p class="form_div_p3">课程类型</p>
                <input class="form_div_input2" type="text" name="coursetype" placeholder="请输入课程类型" value="专业课" required>
                <p class="form_div_p4">课程性质</p>
                <input class="form_div_input3" type="text" name="coursenature" placeholder="请输入课程性质（必修课/选修课）" required>
                <p class="form_div_p5">考试类型</p>
                <input class="form_div_input4" type="text" name="examtype" placeholder="请输入考试类型(考试/自查)" required>
                <p class="form_div_p6">学年</p>
                <input class="form_div_input5" type="text" name="year" placeholder="请输入学年" value="2023-2024学年第1学期" required>
                <p class="form_div_p7">学生</p>
                <input class="form_div_input6" type="text" name="student" placeholder="请输入学生" required>
                <input class="form_div_input7" type="text" name="teacher" value="${sessionScope.username}" style="display: none">
                <br>
                <button class="form_div_button1">添加</button>
                <button class="form_div_button2" type="button" onclick="Display1()">取消</button>

            </form>
        </div>
        <div class="form1_div" id="form1_div" style="display: none">
            <form id="form1" action="addwork" method="post" accept-charset="UTF-8">
                <p class="form1_div_p1">添加作业信息</p>
                <div class="form1_div_hr"></div>
                <p class="form1_div_p2">作业名</p>
                <input class="form1_div_input1" type="text" name="workname" placeholder="请输入作业名" required>
                <p class="form1_div_p3">课程名</p>
                <input class="form1_div_input2" type="text" name="coursename" placeholder="请输入课程名" required>
                <p class="form1_div_p4">教师名</p>
                <input class="form1_div_input3" type="text" name="teacher" placeholder="请输入教师名" value="${sessionScope.username}" required>
                <p class="form1_div_p5">作业类型</p>
                <input class="form1_div_input4" type="text" name="worktype" placeholder="请输入作业类型（实验报告/期末项目）" required>
                <p class="form1_div_p6">成绩类型</p>
                <input class="form1_div_input5" type="text" name="gradetype" placeholder="请输入成绩类型" value="百分制" required>
                <p class="form1_div_p7">批阅方式</p>
                <input class="form1_div_input6" type="text" name="reviewmethod" placeholder="请输入批阅方式" value="离线" required>
                <p class="form1_div_p8">截止日期</p>
                <input class="form1_div_input7" type="text" name="deadline" placeholder="请输入截止日期" required>
                <p class="form1_div_p9">作业状态</p>
                <input class="form1_div_input8" type="text" name="type" placeholder="请输入作业状态" value="未提交" required>
                <p class="form1_div_p10">学生</p>
                <input class="form1_div_input9" type="text" name="student" placeholder="请输入学生" required>
                <br>
                <button class="form1_div_button1">添加</button>
                <button class="form1_div_button2" type="button" onclick="Display2()">取消</button>

            </form>
        </div>
    </div>


</div>





<script>
    function Display(){
        var form_div = document.getElementById("form_div");
        form_div.style.display="block";
    }
    function Display1(){
        var form_div = document.getElementById("form_div");
        form_div.style.display="none";
    }
    function Display2(){
        var form1_div = document.getElementById("form1_div");
        form1_div.style.display="none";
    }
    function Display3(coursename){
        var form1_div = document.getElementById("form1_div");
        form1_div.style.display="block";
        var form1 = document.getElementById("form1");
        form1.querySelector('input[name="coursename"]').value = coursename;
    }
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

    const rowsPerPage = 8; // 每页显示的行数
    const table = document.getElementById('courseTable');
    const pagination = document.getElementById('pagination');
    const rows = table.getElementsByTagName('tr');
    const pageCount = Math.ceil((rows.length - 1) / rowsPerPage); // 减去表头行

    let currentPage = 1; // 当前页码
    const previousPageButton = document.getElementById('previousPage');
    const nextPageButton = document.getElementById('nextPage');
    const pageIndicator = document.getElementById('pageIndicator');
    const jumpInput = document.getElementById('jumpInput');
    const jumpButton = document.getElementById('jumpButton');

    // 初始化页码指示器
    pageIndicator.textContent = currentPage+'/'+pageCount;

    // 显示指定页码的内容
    function showPage(page) {
        const startIndex = (page - 1) * rowsPerPage + 1; // 跳过表头行
        const endIndex = startIndex + rowsPerPage;
        for (let i = 1; i < rows.length; i++) {
            if (i >= startIndex && i < endIndex) {
                rows[i].style.display = 'table-row';
            } else {
                rows[i].style.display = 'none';
            }
        }
    }

    // 更新页码指示器
    function updatePageIndicator() {
        pageIndicator.textContent = `${currentPage}/${pageCount}`;
    }

    // 更新按钮状态
    function updateButtonStatus() {
        previousPageButton.disabled = currentPage === 1;
        nextPageButton.disabled = currentPage === pageCount;
    }

    // 切换到上一页
    function previousPage() {
        if (currentPage > 1) {
            currentPage--;
            showPage(currentPage);
            updatePageIndicator();
            updateButtonStatus();
        }
    }

    // 切换到下一页
    function nextPage() {
        if (currentPage < pageCount) {
            currentPage++;
            showPage(currentPage);
            updatePageIndicator();
            updateButtonStatus();
        }
    }

    // 跳转到指定页码
    function jumpToPage() {
        const pageNumber = parseInt(jumpInput.value);
        if (pageNumber >= 1 && pageNumber <= pageCount) {
            currentPage = pageNumber;
            showPage(currentPage);
            updatePageIndicator();
            updateButtonStatus();
        }
    }

    // 绑定翻页按钮的点击事件
    previousPageButton.addEventListener('click', previousPage);
    nextPageButton.addEventListener('click', nextPage);
    jumpButton.addEventListener('click', jumpToPage);

    // 默认显示第一页
    showPage(currentPage);
    updateButtonStatus();



</script>


</body>
</html>


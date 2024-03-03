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


        .form_div{
            position: relative;
            top: -430px;
            left: 350px;
            width: 400px;
            height: 200px;
            background-color: #ffffff;
            text-align: center;
            border: #000000 1px solid;
        }

        .form_div form{
            width: 400px;
            height: 200px;

        }

        .form_div div{
            display: inline-block;
            width: 400px;
            height: 60px;
            text-align: center;
            line-height: 60px;
            font-size: 30px;
            font-weight:700;

        }

        .from_div span{
            position: relative;
            left: -25px;
            font-size: 25px;
        }

        .form_div input{
            width: 180px;
            height: 35px;
        }

        .form_div button{
            position: relative;
            top: 30px;
            left: -40px;
            width: 80px;
            height: 30px;
            font-size: 15px;
            margin-left: 80px;
            background-color: #e0e6e6;
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
        <li class="nav-item"><a href="home-home.jsp" >首页</a></li>
        <li class="left_nav_active"><a href="#" >已选课程列表</a></li>
        <li class="nav-item"><a href="home-homework.jsp" >作业计划列表</a></li>
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
    <a href="home-home.jsp"><button class="box2_button1"> < </button></a>
    <div class="box2_nav_bar" id="navBar">


        <div class="navbar_button_box_first">
            <a href="home-home.jsp">
                <div class="navbar_button_circle"></div>
                <span class="text">首页</span>
            </a>
        </div>
        <div class="navbar_button_box_second">
            <a href="#">
                <div class="navbar_button_circle nav_button_circle_choose"></div>
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
                <div class="navbar_button_circle"></div>
                <span class="text">修改密码</span>
            </a>
        </div>
    </div>
    <a href="home-homework.jsp"><button class="box2_button2">></button></a>
</div>





<div class="box" id="box3">
    <div class="con_contain">
        <p>课程列表</p>
        <div class="course_hr"></div>
        <div class="table_div">
            <form action="course" method="post" accept-charset="UTF-8">
                <input  type="text" name="username" value="${sessionScope.username}" style="display: none">
                <button class="form_button" type="submit">查看课程计划</button>
                <table>
                    <tr>
                        <th>课程名称</th>
                        <th>课程类型</th>
                        <th>课程性质</th>
                        <th>考试类型</th>
                        <th>学年</th>
                        <th>教师</th>
                        <th>操作</th>
                    </tr>

                    <c:forEach var="course" items="${courses}">
                        <%--                course依次赋值courses内容--%>
                        <tr>
                            <td>${course.coursename}</td>
                            <td>${course.coursetype}</td>
                            <td>${course.coursenature}</td>
                            <td>${course.examtype}</td>
                            <td>${course.year}</td>
                            <td>${course.teacher}</td>
                            <td><button type="button" onclick="Display('${course.coursename}')">查看作业计划</button></td>
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
    </div>
    <div id="form_div" style="display: none" class="form_div">
        <form id="form" action="select" method="post" accept-charset="UTF-8">
            <div>查看作业</div>
            <span>课程名</span>
            <input type="text" name="coursename" placeholder="请输入课程名" required>
            <input type="text" name="username" value="${sessionScope.username}" style="display: none">
            <br>
            <button>提交</button>
            <button type="button" onclick="Display1()">取消</button>
        </form>
    </div>

</div>





<script>
    function Display(coursename){
        var form_div = document.getElementById("form_div");
        form_div.style.display="block";
        var form = document.getElementById("form");
        form.querySelector('input[name="coursename"]').value = coursename;
    }
    function Display1(){
        var form_div = document.getElementById("form_div");
        form_div.style.display="none";
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


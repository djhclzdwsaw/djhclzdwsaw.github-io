package com.zyglxt.servlet;

import com.zyglxt.bean.Course;
import com.zyglxt.dao.CourseDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/course")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        CourseDao courseDao = new CourseDao();
        List<Course> courseList;
        try {
            String username = request.getParameter("username");
            courseList = courseDao.getCourseData(username);
            request.setAttribute("courses", courseList);
            // 将学生数据保存到请求属性中
            RequestDispatcher dispatcher = request.getRequestDispatcher("home-course.jsp");
            //确认转移路径
            dispatcher.forward(request, response);
            // 转发请求给表格页面
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

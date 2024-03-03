package com.zyglxt.servlet;

import com.zyglxt.bean.Course;
import com.zyglxt.dao.CourseDao;
import com.zyglxt.dao.TCourseDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/tcourse")
public class TCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        TCourseDao tcourseDao = new TCourseDao();
        List<Course> courseList;
        try {
            String teacher = request.getParameter("username");
            courseList = tcourseDao.getCourseData(teacher);
            request.setAttribute("courses", courseList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("tcourse.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

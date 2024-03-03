package com.zyglxt.servlet;

import com.zyglxt.bean.Course;
import com.zyglxt.bean.Work;
import com.zyglxt.dao.AddCourseDao;
import com.zyglxt.dao.SubmitDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/addcourse")
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        AddCourseDao addCourseDao = new AddCourseDao();
        List<Course> courseList;
        try {
            String coursename = request.getParameter("coursename");
            String coursetype = request.getParameter("coursetype");
            String coursenature = request.getParameter("coursenature");
            String examtype = request.getParameter("examtype");
            String year = request.getParameter("year");
            String student = request.getParameter("student");
            String teacher = request.getParameter("teacher");
            courseList = addCourseDao.addCourseData(coursename,coursetype,coursenature,examtype,year,student,teacher);
            request.setAttribute("courses", courseList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("tcourse.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
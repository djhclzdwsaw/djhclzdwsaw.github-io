package com.zyglxt.servlet;

import com.zyglxt.bean.Course;
import com.zyglxt.bean.Work;
import com.zyglxt.dao.AddCourseDao;
import com.zyglxt.dao.AddWorkDao;
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

@WebServlet("/addwork")
public class AddWorkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        AddWorkDao addWorkDao = new AddWorkDao();
        List<Work> workList;
        try {
            String workname = request.getParameter("workname");
            String coursename = request.getParameter("coursename");
            String teacher = request.getParameter("teacher");
            String worktype = request.getParameter("worktype");
            String gradetype = request.getParameter("gradetype");
            String grade =null;
            String reviewmethod = request.getParameter("reviewmethod");
            String deadline = request.getParameter("deadline");
            String type = request.getParameter("type");
            String student = request.getParameter("student");
            String file =null;
            workList = addWorkDao.addWorkData(workname,coursename,teacher,worktype,gradetype,grade,reviewmethod,deadline,type,student,file);
            request.setAttribute("works", workList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("twork.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
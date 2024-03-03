package com.zyglxt.servlet;

import com.zyglxt.bean.Work;
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

@WebServlet("/submit")
@MultipartConfig
public class SubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SubmitDao submitDao = new SubmitDao();
        List<Work> workList;
        try {
            String workname = request.getParameter("workname");
            String coursename = request.getParameter("coursename");
            String grade = request.getParameter("grade");
            String username = request.getParameter("username");
            String type = "已提交";
            String flag = request.getParameter("flag");

            Part part = request.getPart("file");
            String fileName = part.getSubmittedFileName();
            String Path ="C:/Users/25943/Desktop/zyglxt/src/main/webapp/download/";
            part.write(Path + fileName);
            submitDao.updatePath(workname, coursename, fileName);

            workList = submitDao.updateWorkData(grade,type,workname,coursename,username,flag);

            // 获取当前日期
            LocalDate currentDate = LocalDate.now();
            // 循环遍历workList，比较deadline和当前日期
            for (Work work : workList) {
                LocalDate deadlineDate = LocalDate.parse(work.getDeadline());
                if (currentDate.isAfter(deadlineDate)) {  // 判断是否超过deadline
                    work.setType("已过期");  // 设置type为"已过期"
                }
            }

            request.setAttribute("works", workList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("home-homework.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
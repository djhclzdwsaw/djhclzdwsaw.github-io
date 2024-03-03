package com.zyglxt.servlet;

import com.zyglxt.bean.Work;
import com.zyglxt.dao.TWorkDao;
import com.zyglxt.dao.WorkDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/twork")
public class TWorkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        TWorkDao tworkDao = new TWorkDao();
        List<Work> workList;
        try {
            String teacher = request.getParameter("username");
            workList = tworkDao.getWorkData(teacher);
            request.setAttribute("works", workList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("twork.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

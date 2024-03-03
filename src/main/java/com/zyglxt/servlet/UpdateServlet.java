package com.zyglxt.servlet;

import com.zyglxt.dao.UpdateDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        UpdateDao updateDao = new UpdateDao();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        try {
            updateDao.update(password,username);
            response.sendRedirect(request.getContextPath() + "/update.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

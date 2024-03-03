package com.zyglxt.servlet;

import com.zyglxt.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String username=request.getParameter("username");
        String password=request.getParameter("password");

        PrintWriter writer = response.getWriter();
        UserDao userDao=new UserDao();
        try {
            if (userDao.select(username,password)){
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                session.setAttribute("xing",username);
                response.sendRedirect(request.getContextPath() + "/home-home.jsp");
            } else {
                writer.write("<h1>登录失败，系统无此用户</h1>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

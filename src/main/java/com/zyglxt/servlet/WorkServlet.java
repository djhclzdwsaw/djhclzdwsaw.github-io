package com.zyglxt.servlet;

import com.zyglxt.bean.Work;
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

@WebServlet("/work")
public class WorkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        WorkDao workDao = new WorkDao();
        List<Work> workList;
        try {
            String username = request.getParameter("username");
            workList = workDao.getWorkData(username);

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
            HttpSession session = request.getSession();
            session.setAttribute("flag",2);//判断更新后的作业是单一课程还是所有课程（2表示所有课程）

            RequestDispatcher dispatcher = request.getRequestDispatcher("home-homework.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

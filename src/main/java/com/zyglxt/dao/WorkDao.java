package com.zyglxt.dao;

import com.zyglxt.bean.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WorkDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public List<Work> getWorkData(String student) throws SQLException {
        Connection connection=null;
        PreparedStatement statement=null;
        String sql="select * from work where student=?";
        List<Work> workList=new ArrayList<>();

        try {
            ResultSet rs = null;
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
            statement = connection.prepareStatement(sql);
            statement.setString(1, student);
            rs = statement.executeQuery();
            while(rs.next()){
                String workname=rs.getString("workname");
                String coursename=rs.getString("coursename");
                String teacher=rs.getString("teacher");
                String worktype=rs.getString("worktype");
                String gradetype=rs.getString("gradetype");
                String grade=rs.getString("grade");
                String reviewmethod=rs.getString("reviewmethod");
                String deadline=rs.getString("deadline");
                String type=rs.getString("type");
                String file=rs.getString("file");
                String student1=rs.getString("student");
                Work work =new Work(workname,coursename,teacher,worktype,gradetype,grade,reviewmethod,deadline,type,file,student1);
                workList.add(work);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return workList;
    }
}

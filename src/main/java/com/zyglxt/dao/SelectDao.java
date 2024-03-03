package com.zyglxt.dao;

import com.zyglxt.bean.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SelectDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public List<Work> selectWorkData(String coursename,String student) throws SQLException {
        String sql = "select * from work where coursename=? and student=?";
        List<Work> workList = new ArrayList<>();

        try{
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, coursename);
            preparedStatement.setString(2, student);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String workname1=rs.getString("workname");
                String coursename1=rs.getString("coursename");
                String teacher=rs.getString("teacher");
                String worktype=rs.getString("worktype");
                String gradetype=rs.getString("gradetype");
                String grade1=rs.getString("grade");
                String reviewmethod=rs.getString("reviewmethod");
                String deadline=rs.getString("deadline");
                String type=rs.getString("type");
                String file=rs.getString("file");
                String student1=rs.getString("student");
                Work work =new Work(workname1,coursename1,teacher,worktype,gradetype,grade1,reviewmethod,deadline,type,file,student1);
                workList.add(work);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return workList;
    }
}

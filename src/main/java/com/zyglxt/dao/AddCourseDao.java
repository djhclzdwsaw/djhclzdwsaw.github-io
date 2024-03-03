package com.zyglxt.dao;

import com.zyglxt.bean.Course;
import com.zyglxt.bean.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AddCourseDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";
    public List<Course> addCourseData(String coursename, String coursetype, String coursenature, String examtype, String year, String student, String teacher) throws SQLException {

        String sql="insert into course values(?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        List<Course> courseList = new ArrayList<>();
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
            statement = connection.prepareStatement(sql);
            statement.setString(1,coursename);
            statement.setString(2,coursetype);
            statement.setString(3,coursenature);
            statement.setString(4,examtype);
            statement.setString(5,year);
            statement.setString(6,teacher);
            statement.setString(7,student);
            int rs=statement.executeUpdate();
            if(rs>0){
                String sql1="select * from course where teacher=?";
                PreparedStatement statement1=connection.prepareStatement(sql1);
                statement1.setString(1, teacher);
                ResultSet rs1 = statement1.executeQuery();
                while(rs1.next()){
                    String coursename1=rs1.getString("coursename");
                    String coursetype1=rs1.getString("coursetype");
                    String coursenature1=rs1.getString("coursenature");
                    String examtype1=rs1.getString("examtype");
                    String year1=rs1.getString("year");
                    String teacher1=rs1.getString("teacher");
                    String student1=rs1.getString("student");
                    Course course =new Course(coursename1,coursetype1,coursenature1,examtype1,year1,teacher1,student1);
                    courseList.add(course);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
        return courseList;
    }
}

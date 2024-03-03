package com.zyglxt.dao;

import com.zyglxt.bean.Course;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CourseDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public List<Course> getCourseData(String student) throws SQLException {
        Connection connection=null;
        PreparedStatement statement=null;
        String sql="select * from course where student=?";
        List<Course> courseList=new ArrayList<>();

        try {
            ResultSet rs = null;
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
            statement = connection.prepareStatement(sql);
            statement.setString(1, student);
            rs = statement.executeQuery();
            while(rs.next()){
                String coursename=rs.getString("coursename");
                String coursetype=rs.getString("coursetype");
                String coursenature=rs.getString("coursenature");
                String examtype=rs.getString("examtype");
                String year=rs.getString("year");
                String teacher=rs.getString("teacher");
                String student1=rs.getString("student");

                Course course =new Course(coursename,coursetype,coursenature,examtype,year,teacher,student1);
                courseList.add(course);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return courseList;
    }
}

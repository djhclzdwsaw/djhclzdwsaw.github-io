package com.zyglxt.dao;

import com.zyglxt.bean.Course;
import com.zyglxt.bean.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AddWorkDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";
    public List<Work> addWorkData(String workname,String coursename,String teacher,String worktype,String gradetype,String grade,String reviewmethod,String deadline,String type,String student,String file) throws SQLException {

        String sql="insert into work values(?,?,?,?,?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        List<Work> workList = new ArrayList<>();
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
            statement = connection.prepareStatement(sql);
            statement.setString(1,workname);
            statement.setString(2,coursename);
            statement.setString(3,teacher);
            statement.setString(4,worktype);
            statement.setString(5,gradetype);
            statement.setString(6,grade);
            statement.setString(7,reviewmethod);
            statement.setString(8,deadline);
            statement.setString(9,student);
            statement.setString(10,type);
            statement.setString(11,file);
            int rs=statement.executeUpdate();
            if(rs>0){
                String sql1="select * from work where teacher=?";
                PreparedStatement statement1=connection.prepareStatement(sql1);
                statement1.setString(1, teacher);
                ResultSet rs1 = statement1.executeQuery();
                while(rs1.next()){
                    String workname1=rs1.getString("workname");
                    String coursename1=rs1.getString("coursename");
                    String teacher1=rs1.getString("teacher");
                    String worktype1=rs1.getString("worktype");
                    String gradetype1=rs1.getString("gradetype");
                    String grade1=rs1.getString("grade");
                    String reviewmethod1=rs1.getString("reviewmethod");
                    String deadline1=rs1.getString("deadline");
                    String type1=rs1.getString("type");
                    String student1=rs1.getString("student");
                    String file1=rs1.getString("file");
                    Work work =new Work(workname1,coursename1,teacher1,worktype1,gradetype1,grade1,reviewmethod1,deadline1,type1,student1,file1);
                    workList.add(work);
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
        return workList;
    }
}

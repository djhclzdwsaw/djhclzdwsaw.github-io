package com.zyglxt.dao;

import com.zyglxt.bean.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubmitDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public List<Work> updateWorkData(String grade, String type, String workname, String coursename,String student,String flag) throws SQLException {
        String sql = "update work set grade=?, type=? where workname=? and coursename=? and student=?";
        List<Work> workList = new ArrayList<>();
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, grade);
            preparedStatement.setString(2, type);
            preparedStatement.setString(3, workname);
            preparedStatement.setString(4, coursename);
            preparedStatement.setString(5, student);
            int rs1=preparedStatement.executeUpdate();

            if(rs1>0 && flag.equals("1")){
                String sql1="select * from work where student=? and coursename=?";
                PreparedStatement statement1=connection.prepareStatement(sql1);
                statement1.setString(1, student);
                statement1.setString(2, coursename);
                ResultSet rs = statement1.executeQuery();
                while(rs.next()){
                    String workname1=rs.getString("workname");
                    String coursename1=rs.getString("coursename");
                    String teacher=rs.getString("teacher");
                    String worktype=rs.getString("worktype");
                    String gradetype=rs.getString("gradetype");
                    String grade1=rs.getString("grade");
                    String reviewmethod=rs.getString("reviewmethod");
                    String deadline=rs.getString("deadline");
                    String type1=rs.getString("type");
                    String file=rs.getString("file");
                    String student1=rs.getString("student");
                    Work work =new Work(workname1,coursename1,teacher,worktype,gradetype,grade1,reviewmethod,deadline,type1,file,student1);
                    workList.add(work);
                }
            }
            if(rs1>0 && flag.equals("2")){
                String sql1="select * from work where student=?";
                PreparedStatement statement1=connection.prepareStatement(sql1);
                statement1.setString(1, student);
                ResultSet rs = statement1.executeQuery();
                while(rs.next()){
                    String workname1=rs.getString("workname");
                    String coursename1=rs.getString("coursename");
                    String teacher=rs.getString("teacher");
                    String worktype=rs.getString("worktype");
                    String gradetype=rs.getString("gradetype");
                    String grade1=rs.getString("grade");
                    String reviewmethod=rs.getString("reviewmethod");
                    String deadline=rs.getString("deadline");
                    String type1=rs.getString("type");
                    String file=rs.getString("file");
                    String student1=rs.getString("student");
                    Work work =new Work(workname1,coursename1,teacher,worktype,gradetype,grade1,reviewmethod,deadline,type1,file,student1);
                    workList.add(work);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return workList;
    }

    public void updatePath(String workname, String coursename, String Path) throws SQLException {
        String sql = "UPDATE work SET file = ? WHERE workname = ? AND coursename = ?";
        try{
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStatement1 = connection.prepareStatement(sql);
            preparedStatement1.setString(1, Path);
            preparedStatement1.setString(2, workname);
            preparedStatement1.setString(3, coursename);
            preparedStatement1.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}

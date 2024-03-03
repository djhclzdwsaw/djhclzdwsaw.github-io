package com.zyglxt.dao;

import java.sql.*;

public class UserDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public boolean select(String username2, String password2) throws SQLException {
        Connection connection=null;
        Statement statement=null;

        String username1;
        String password1;
        String sql="select username,password from user";
        try {
            ResultSet rs = null;
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
            statement= connection.createStatement();
            rs=statement.executeQuery(sql);
            while (rs.next()) {
                username1 = rs.getString("username");
                password1 = rs.getString("password");
                if (username1.equals(username2) && password1.equals(password2)) {
                    return true;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
        return false;
    }
}

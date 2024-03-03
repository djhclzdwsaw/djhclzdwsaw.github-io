package com.zyglxt.dao;

import java.sql.*;

public class UpdateDao {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/servlet?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
    private static String username="root";
    private static String password="123456";

    public void update(String word, String name) throws SQLException {
        String sql = "update user set password=? where username=?";
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, word);
            preparedStatement.setString(2, name);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}

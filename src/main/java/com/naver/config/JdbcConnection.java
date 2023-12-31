package com.naver.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
        private static final String URL = "jdbc:mysql://localhost:3306/horse_racing_db"
                + "?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
        private static final String USER = "root";
        private static final String PASSWORD = "12345678";

    public Connection getJdbc()  {
        Connection conn;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        }catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }
}


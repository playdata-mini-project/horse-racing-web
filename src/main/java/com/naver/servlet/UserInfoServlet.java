package com.naver.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("user/userInfo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            // 데이터베이스 연결 설정
            String dbURL = "jdbc:mysql://localhost:3306/user";
            String dbUsername = "root";
            String dbPassword = "12345678";
            Class.forName("com.naver.servlet.UserInfoServlet");
            Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

            // 유저 정보 출력
            out.println("<html><head><title>유저 정보</title></head><body>");
            out.println("<h2>전체 유저 정보</h2>");
            out.println("<table>");
            out.println("<tr><th>ID</th><th>이름</th></tr>");
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String username = resultSet.getString("username");
                out.println("<tr><td>" + id + "</td><td>" + username + "</td></tr>");
            }
            out.println("</table>");
            out.println("</body></html>");

            resultSet.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("오류가 발생했습니다.");
        }
    }
}
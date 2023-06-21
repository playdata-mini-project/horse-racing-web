package com.naver.servlet;

import com.naver.dao.UserDao;

import javax.lang.model.element.Name;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    // MySQL 연결 정보

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/user/login.jsp").forward(req,resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        if ((new UserDao()).login(name, password)) {
            response.sendRedirect("/main");
        } else {
            response.sendRedirect("/join");
        }
    }
}
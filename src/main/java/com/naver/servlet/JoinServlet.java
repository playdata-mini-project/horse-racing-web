package com.naver.servlet;

import com.naver.Dto.UserDto;
import com.naver.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("test","로그인");
req.getRequestDispatcher("/user/join.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String nickname = req.getParameter("nickname");
        new UserDao().insert(new UserDto(null,name,password,nickname,0,null));
        resp.sendRedirect("/userinfo");

    }
}

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
        req.getRequestDispatcher("/user/join.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String nickname = req.getParameter("nickname");
        UserDao userDao = new UserDao();
        UserDto userDto = new UserDto( name, password, nickname, 0);
        boolean success = userDao.insert(userDto);

        if(success) {
            resp.sendRedirect("/user/user.jsp");
        }
        else{
            resp.sendRedirect("/user/insertUserFail.jsp");
        }
    }
}

package com.naver.servlet;

import com.naver.Dto.UpdateMoneyDto;
import com.naver.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateMoneyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("user/updateMoney.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String moneyParam = req.getParameter("money");
        int money = Integer.parseInt(moneyParam);

        UpdateMoneyDto dto = new UpdateMoneyDto(name, money);
        UserDao userDao = new UserDao();
        boolean success = userDao.updateMoney(dto);
        System.out.println(success);
        if(success) {
            req.getRequestDispatcher("user/updateMoney.jsp").forward(req, resp);
        }
        req.getRequestDispatcher("user/updateFailMoney.jsp").forward(req, resp);
    }
}
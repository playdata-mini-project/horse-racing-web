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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        String moneyParam = req.getParameter("money");
        int money = 0;

        if (moneyParam != null) {
            try {
                money = Integer.parseInt(moneyParam);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                // 잘못된 입력 처리에 대한 예외 처리 로직 작성
                return;
            }
        }

        // 유저 정보 업데이트 로직
        UpdateMoneyDto dto = new UpdateMoneyDto(money, userId);
        UserDao userDao = new UserDao();
        userDao.updateMoney(dto);

        // 유저 정보를 업데이트한 후, userinfo.jsp로 리다이렉트
        resp.sendRedirect("userinfo.jsp");
    }
}
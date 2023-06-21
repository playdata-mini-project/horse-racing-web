package com.naver.servlet;

import com.naver.Dto.HorseInsertDto;
import com.naver.dao.HorseDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HorseInsertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/horse/horseInsert.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        float height = Float.parseFloat(req.getParameter("height"));
        float weight = Float.parseFloat(req.getParameter("weight"));
        HorseDao horseDao = new HorseDao();
        HorseInsertDto horseInsertDto = new HorseInsertDto(name, age, height, weight);
        boolean success = horseDao.insert(horseInsertDto);
        if(success) {
            resp.sendRedirect("/horse/horseMain.jsp");
        }
        else{
            resp.sendRedirect("/horse/insertHorseFail.jsp");
        }

    }
}

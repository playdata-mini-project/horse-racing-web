package com.naver.servlet;

import com.naver.domain.entity.game.Game;
import com.naver.domain.entity.horse.Horse;
import com.naver.domain.entity.horse.Horses;
import com.naver.util.SplitUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/game")
public class GameServlet extends HttpServlet {

    private Game game;

    @Override
    public void init() throws ServletException {
        game = new Game();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head><title>Race Result</title><link rel='stylesheet' type='text/css' href='/css/game.css'></head>");
        out.println("<body style='background-color: #232736 !important;'>");
        out.println("");
        out.println("<h1 style=\"text-align: center; color: white; font-family: SBAggroB\">경마 게임</h1>");
        out.println("<table border=\"3\" style=\"border: #161823; background-color: #161823; color: white; margin-left: auto; margin-right: auto; \" >");
        out.println("<tr>");
        out.println("<th>말 이름</th>");
        out.println("<th>유저</th>");
        out.println("<th>도달 거리</th>");
        out.println("</tr>");
        for (Horse horse : game.getHorses().getHorses()) {
            out.println("<tr>");
            out.println("<td>" + horse.getName() + "</td>");
            out.println("<td>" + horse.getUser() + "</td>");
            out.println("<td>" + horse.getDistance().getValue() + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");

        Horse winningHorse = game.getWinningHorse();
        if (winningHorse != null) {
            out.println("<h2 style=\"text-align: center; color: white; font-family: SBAggroB\">축 !  우승 !</h2>");
            out.println("<table border=\"3\" style=\"border: #161823; background-color: #161823; color: white; margin-left: auto; margin-right: auto; \" >");
            out.println("<p border=\"3\" style=\"border: #161823; background-color: #161823; color: white; margin-left: auto; margin-right: auto;  \">말 이름: " + winningHorse.getName() + "</p>");
            out.println("<p border=\"3\" style=\"border: #161823; background-color: #161823; color: white; margin-left: auto; margin-right: auto;  \">유저: " + winningHorse.getUser() + "</p>");
        }

        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String horseNamesParam = request.getParameter("horses");
        String userNamesParam = request.getParameter("users");
        int targetDistance = Integer.parseInt(request.getParameter("targetDistance"));

        if (isValidParameters(horseNamesParam, userNamesParam)) {
            String[] horseNames = SplitUtil.split(horseNamesParam);
            String[] userNames = SplitUtil.split(userNamesParam);

            if (horseNames.length == userNames.length) {
                Horses horses = createHorses(horseNames, userNames, targetDistance);
                game.setHorses(horses);
            }
        }

        game.startRace();
    }

    private boolean isValidParameters(String horseNamesParam, String userNamesParam) {
        return horseNamesParam != null && !horseNamesParam.isEmpty() &&
                userNamesParam != null && !userNamesParam.isEmpty();
    }

    private Horses createHorses(String[] horseNames, String[] userNames, int targetDistance) {
        Horses horses = Horses.create();
        for (int i = 0; i < horseNames.length; i++) {
            Horse horse = new Horse(horseNames[i]);
            horse.setUser(userNames[i]);
            horse.setTargetDistance(targetDistance);
            horses.addHorse(horse);
        }

        return horses;
    }
}

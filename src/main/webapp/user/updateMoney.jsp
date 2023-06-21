<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.naver.Dto.UpdateMoneyDto" %>
<%@ page import="com.naver.dao.UserDao" %>

<%
    String name = request.getParameter("name");
    String moneyParam = request.getParameter("money");
    int money = 0;

    if (moneyParam != null) {
        try {
            money = Integer.parseInt(moneyParam);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            out.println("<p style=\"color: red;\">잘못된 입력입니다. 다시 입력하세요.</p>");
            return;
        }
    }

    UpdateMoneyDto dto = new UpdateMoneyDto(money, name);
    UserDao userDao = new UserDao();
    userDao.updateMoney(dto);

%>
<html>
<head>
    <title>코인 충전 완료</title>

</head>
<body>
<h1>코인 충전 완료</h1>
<p>코인이 충전되었습니다.</p>
<p><a href="http://localhost:8080">홈으로 돌아가기</a></p>
</body>
</html>
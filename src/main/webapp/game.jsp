
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <title>경마</title>
  <style>
    body {
      background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
    }

    .game-form {
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f5f5f5;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .game-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .game-form input[type="text"],
    .game-form input[type="number"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .game-form input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: red;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .game-form input[type="submit"]:hover {
      background-color: red;
    }

    .game-form .error-message {
      color: red;
      margin-bottom: 10px;
      text-align: center;
    }
  </style>
</head>
<body>
<form class="game-form" action="${pageContext.request.contextPath}/game" method="post" accept-charset="UTF-8">
  <h2>경마</h2>
  <label>
    <input type="text" name="horses" placeholder="경주할 말 이름을 입력하세요 (이름은 쉼표(,)를 기준으로 구분)" size="50">
  </label>
  <label>
    <input type="text" name="users" placeholder="말 순서에 맞춰 유저를 매칭해주세요 (이름은 쉼표(,)를 기준으로 구분)" size="50">
  </label>
  <label>
    <input type="number" name="targetDistance" placeholder="목표 횟수를 입력해주세요" size="50">
  </label>
  <input type="submit" value="게임 시작">
</form>
</body>
</html>


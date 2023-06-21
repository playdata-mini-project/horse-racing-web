<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>코인 충전</title>
  <style>
    body {
      background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
    }
    .coin-form {
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f5f5f5;
      border: 1px solid #ccc;
      border-radius: 5px;
      justify-content: center;
      align-items: center;
      height: 30vh; /* 폼 컨테이너의 높이를 조정해주세요. */
    }

    .coin-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .coin-form input[type="text"],
    .coin-form input[type="number"] {
      width: 90%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .coin-form input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: red;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .coin-form input[type="submit"]:hover {
      background-color: red;
    }

    .coin-form .success-message {
      color: red;
      margin-bottom: 10px;
      text-align: center;
    }
  </style>
</head>
<body>

<form class="coin-form" method="post" action="/updateMoney">
  <h2>코인 충전</h2>
  <label for="name">이름:</label>
  <input type="text" id="name" name="name" required><br>
  <label for="money">충전할 금액:</label>
  <input type="number" id="money" name="money" required><br>
  <input type="submit" value="충전">
</form>
</body>
</html>
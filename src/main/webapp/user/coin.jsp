<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>코인 충전</title>
  <style>
    .coin-form {
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f5f5f5;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .coin-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .coin-form input[type="text"],
    .coin-form input[type="number"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .coin-form input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .coin-form input[type="submit"]:hover {
      background-color: #45a049;
    }

    .coin-form .success-message {
      color: green;
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
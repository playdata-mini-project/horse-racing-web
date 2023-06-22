<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>코인 충전 실패</title>
  <style>
    body {
      background-color: #232736; /* 배경색을 원하는 값으로 변경 */
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background-color: #ffffff;
      border-radius: 5px;
      padding: 40px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    h1 {
      color: #333333;
      margin-top: 0;
    }

    p {
      margin-top: 20px;
      color: #ff0000; /* 에러 메시지 색상을 원하는 값으로 변경 */
    }

    a {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: #ffffff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>코인 충전이 실패했습니다!</h1>
  <p>존재하지 않는 유저명입니다.</p>
  <p><a href="/user/user.jsp">홈으로 돌아가기</a></p>
</div>
</body>
</html>

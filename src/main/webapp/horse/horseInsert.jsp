<%--
  Created by IntelliJ IDEA.
  User: jmg13
  Date: 2023-06-21
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>경주마 등록</title>
    <style>
        .signup-form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .signup-form input[type="text"],
        .signup-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .signup-form input[type="submit"]:hover {
            background-color: #45a049;
        }

        .signup-form .error-message {
            color: red;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="signup-form">
    <h2>경주마 등록</h2>
    <form action="/horseInsert" method="post">
        <input type="text" name="name" placeholder="이름" required>
        <input type="number" name="age" placeholder="나이" required>
        <input type="number" name="height" placeholder="길이" required>
        <input type="number" name="weight" placeholder="무게" required>
        <input type="submit" value="등록하기">
    </form>
</div>
</body>
</html>

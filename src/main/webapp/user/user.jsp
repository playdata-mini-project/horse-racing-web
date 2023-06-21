<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>유저</title>
    <style>
        .button-container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .button-container .button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }

        .button-container .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="button-container">
    <h2>유저</h2>
    <a href="join.jsp" class="button">유저 등록</a>
    <a href="userInfo.jsp" class="button">유저 조회</a>
    <a href="coin.jsp" class="button">코인 충전</a>
    <a href="index.jsp" class="button">Home</a>
</div>
</body>
</html>
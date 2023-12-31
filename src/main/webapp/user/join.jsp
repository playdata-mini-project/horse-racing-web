<%--
  Created by IntelliJ IDEA.
  User: ijaemyeong
  Date: 2023/06/20
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>유저등록</title>
    <style>
        body {
            background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
        }

        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        .signup-form {
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
            background-color: red;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .signup-form input[type="submit"]:hover {
            background-color: red;
        }

        .signup-form .error-message {
            color: red;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="signup-form" style="font-family: SBAggroB">
    <h2>유저등록</h2>
    <form action="/join" method="post">
        <input type="text" name="name" placeholder="아이디" required>
        <input type="password" name="password" placeholder="비밀번호" required>
        <input type="text" name="nickname" placeholder="닉네임" required>
        <input type="submit" value="등록하기">
    </form>
    <% if (request.getAttribute("message") != null) { %>
    <div class="error-message">
        <%= request.getAttribute("message") %>
    </div>
    <% } else if (request.getAttribute("registered") != null) { %>
    <div class="success-message">
        등록이 완료되었습니다.
    </div>
    <% } %>
</div>
</body>
</html>



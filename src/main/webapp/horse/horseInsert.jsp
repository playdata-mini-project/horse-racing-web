
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>경주마 등록</title>
    <style>
        body {
            background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
        }
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
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    </style>
</head>
<body>
<div class="signup-form" style="font-family: SBAggroB">
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

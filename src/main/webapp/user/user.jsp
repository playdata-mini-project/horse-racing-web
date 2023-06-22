<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>GIF 이미지 표시</title>
</head>
<head>
    <title>유저</title>
    <style>
        body {
            background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
        }

        .button-container {
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

        .button-container h2 {
            text-align: center;
            margin-bottom: 20px;
            justify-content: center;
            align-items: center;
        }

        .button-container .button {
            display: block;
            padding: 10px;
            margin-bottom: 10px;
            background-color: red;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;

        }

        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .button-container .button:hover {
            background-color: red;
        }
    </style>
</head>
<body>

<div class="button-container" style="font-family: SBAggroB">
    <h2>유저</h2>
    <a href="join.jsp" class="button">유저 등록</a>
    <a href="userInfo.jsp" class="button">유저 조회</a>
    <a href="coin.jsp" class="button">코인 충전</a>
    <a href="/" class="button">Home</a>
</div>
</body>
</html>
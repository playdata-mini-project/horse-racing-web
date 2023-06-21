<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <style>
    body {
      background-color: #232736 !important;
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
      height: 30vh;
      display: flex;
      flex-direction: column;
    }

    .button-container h2 {
      text-align: center;
      margin-bottom: 20px;
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

    .button-container .button:hover {
      background-color: darkred;
    }

    img {
      display: block;
      margin: 0 auto;
      margin-top: 20px;
      width: 600px;
    }
  </style>
</head>
<body>
<img src="/img/rudak.png">
<div class="button-container">
  <h2>경주마 관리</h2>
  <button type="button" class="button" onClick="location.href='/horse/horseInsert.jsp'">경주마 등록</button>
  <button type="button" class="button" onClick="location.href='/horse/horseInfo.jsp'">경주마 조회</button>
  <button type="button" class="button" onClick="location.href='/'">Home</button>
</div>
</body>
</html>

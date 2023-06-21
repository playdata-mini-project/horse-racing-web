<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <style>
    body {
      background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
    }
  </style>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<img src="/img/rudak.png">
<div class = "button-container">
  <button type="button" class="button1" onClick="location.href='/horse/horseInsert.jsp'">경주마 등록</button>
  <button type="button" class="button2" onClick="location.href='/horse/horseInfo.jsp'">경주마 조회</button>
<%--   <button type="button" class="button3" onClick="location.href='/horse/horseInfo.jsp'">뒤로가기</button>--%>
</div>
</body>
</html>

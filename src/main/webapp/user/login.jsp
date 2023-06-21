<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>유저 정보 확인</title>
    <style>
        .user-info-form {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .user-info-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .user-info-form input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .user-info-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .user-info-form input[type="submit"]:hover {
            background-color: #45a049;
        }

        .user-info-form .user-details {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<form class="user-info-form" method="post" action="userInfo.jsp">
    <h2>유저 정보 확인</h2>
    <input type="text" name="username" placeholder="유저 이름" required>
    <input type="submit" value="확인">
</form>

<%
    String username = request.getParameter("username");
    if (username != null ) {
        // 유저 정보 조회 및 출력
        try {
            Connection conn =
            PreparedStatement statement = conn.prepareStatement("SELECT * FROM usrs WHERE username = ?");
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // 유저 정보 출력
                String id = resultSet.getString("id");
                String name = resultSet.getString("username");
                // 유저 정보를 원하는 형식으로 출력
%>
<div class="user-details">
    <h3>유저 정보</h3>
    <p>ID: <%= id %></p>
    <p>이름: <%= name %></p>
</div>
<%
} else {
    // 해당 유저가 없는 경우 오류 메시지 출력
%>
<div class="error-message">
    해당 유저를 찾을 수 없습니다.
</div>
<%
            }

            // 연결 및 자원 해제
            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
%>

</body>
</html>
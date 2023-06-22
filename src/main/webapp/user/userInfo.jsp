<%@ page import="java.sql.Connection" %>
<%@ page import="com.naver.config.JdbcConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/backGround.css">
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <title>유저 정보 확인</title>
    <style>
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
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

        .user-info-form .user-details {
            margin-top: 20px;
        }
        body {
            background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
        }
    </style>
</head>
<body>

<%
    try {
        Connection conn = new JdbcConnection().getJdbc();
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

%>
<div class="user-table"style="font-family: SBAggroB">
    <h3>전체 유저 정보</h3>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>PASSWORD</th>
            <th>NICKNAME</th>
            <th>MONEY</th>
            <!-- 추가 필요한 컬럼이 있다면 여기에 추가 -->
        </tr>
        <%
            while (resultSet.next()) {
                int id = Integer.parseInt(resultSet.getString("id"));
                String username = resultSet.getString("name");
                String password = resultSet.getString("password");
                String nickname = resultSet.getString("nickname");
                int money = Integer.parseInt(resultSet.getString("money"));
        %>
<%--         추가 필요한 컬럼이 있다면 여기에 추가--%>

        <tr>
            <td><%= id %></td>
            <td><%= username %></td>
            <td><%= password %></td>
            <td><%= nickname %></td>
            <td><%= money %></td>
            <!-- 추가 필요한 컬럼이 있다면 여기에 추가 -->
        </tr>
    </table>
</div>
<%
        }  // 연결 및 자원 해제
        resultSet.close();
        statement.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
        // 예외 처리에 따라 적절한 조치를 취하세요.
    }
%>

</body>
</html>

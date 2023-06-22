<%--
  Created by IntelliJ IDEA.
  User: jmg13
  Date: 2023-06-21
  Time: 오후 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.naver.config.JdbcConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>경주마 조회</title>
    <style>
        body {
            background-color: #232736 !important; /* 우선순위를 높이기 위한 구체적인 선택자 */
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
    </style>
</head>
<body>
<%
    try {
        Connection conn = new JdbcConnection().getJdbc();
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM horse");

%>
<div class="user-details">
    <h3>전체 경주마 정보</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>HEIGHT</th>
            <th>WEIGHT</th>
            <th>winRate</th>
            <!-- 추가 필요한 컬럼이 있다면 여기에 추가 -->
        </tr>
        <%
            while (resultSet.next()) {
                int id = Integer.parseInt(resultSet.getString("id"));
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                float height = resultSet.getFloat("height");
                float weight = resultSet.getFloat("weight");
                float winRate = resultSet.getFloat("winRate");
                // 추가 필요한 컬럼이 있다면 여기에 추가
        %>
        <tr>
            <th><%=id%></th>
            <th><%=name%></th>
            <th><%=age%></th>
            <th><%=height%></th>
            <th><%=weight%></th>
            <th><%=winRate%></th>
            <!-- 추가 필요한 컬럼이 있다면 여기에 추가 -->
        </tr>
        <%
            }
        %>
    </table>
</div>
<%
        // 연결 및 자원 해제
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

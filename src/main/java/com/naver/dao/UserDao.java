package com.naver.dao;


import com.mysql.cj.jdbc.ConnectionImpl;
import com.naver.Dto.UpdateMoneyDto;
import com.naver.Dto.UserDto;
import com.naver.config.JdbcConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
    public static UserDto me;
    public void insert(UserDto user) {
        System.out.println("insert");
        Connection conn = new JdbcConnection().getJdbc();
        String sql = "insert into users(name, password, nickname, money) " +
                "values(?, ?, ? , ?)";
        System.out.println("insert2");
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, user.getName());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getNickname());
            pst.setInt(4, user.getMoney());
            pst.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


//    public boolean login(String name, String password) {
//        List<UserDto> users = new ArrayList<UserDto>();
//        Connection conn = new JdbcConnection().getJdbc();
//        String sql = "select id, name, nickname, created_at " +
//                "from users " +
//                "where name = ? and password = ?";
//        try {
//            PreparedStatement pst = conn.prepareStatement(sql);
//            pst.setString(1, name);
//            pst.setString(2, password);
//            ResultSet resultSet = pst.executeQuery();
//            while (resultSet.next()) {
//                users.add(makeUser(resultSet));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        if (users.size() !=0){
//            me = users.get(0);
//            System.out.println(me);
//            return true;
//        }
//        return false;
//    }
//
    private UserDto makeUser(ResultSet resultSet) {
            Integer id,money;
            String password, username, name, createdAt;
            try {
                id = resultSet.getInt("id");
            } catch (SQLException e) {
                id = null;
            }
            try {
                password = resultSet.getString("password");
            } catch (SQLException e) {
                password = null;
            }
            try {
                username = resultSet.getString("name");
            } catch (SQLException e) {
                username = null;
            }
            try {
                name = resultSet.getString("nickname");
            } catch (SQLException e) {
                name = null;
            }try {
            money = resultSet.getInt("money");
        } catch (SQLException e) {
            money = null;
        }
            try {
                createdAt = resultSet.getString("created_at");
            } catch (SQLException e) {
                createdAt = null;
            }
            return new UserDto(id, username, password, name,money, createdAt);
        }


    public void updateMoney(UpdateMoneyDto dto) {
        Connection conn = new JdbcConnection().getJdbc();

        try {
            String updateQuery = "UPDATE users SET money = money + ? WHERE name = ?";;
            PreparedStatement statement = conn.prepareStatement(updateQuery);
            statement.setInt(1,dto.getMoney());
            statement.setString(2,dto.getName());

            int rowsAffected = statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

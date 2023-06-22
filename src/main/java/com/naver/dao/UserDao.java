package com.naver.dao;



import com.naver.Dto.UpdateMoneyDto;
import com.naver.Dto.UserDto;
import com.naver.config.JdbcConnection;

import java.sql.*;



public class UserDao {

    public boolean insert(UserDto user) {
        try {
            Connection conn = new JdbcConnection().getJdbc();
            String sql = "insert into users(name, password, nickname, money) " +
                    "values(?, ?, ? , ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, user.getName());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getNickname());
            pst.setInt(4, user.getMoney());
            try {
                int rowsAffected = pst.executeUpdate();
                System.out.println(rowsAffected);
                return rowsAffected == 1;
            } catch (SQLIntegrityConstraintViolationException ex) {

                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public boolean updateMoney(UpdateMoneyDto dto) {
        try {
            Connection conn = new JdbcConnection().getJdbc();
            String updateQuery = "UPDATE users SET money = money + ? WHERE name = ?";
            PreparedStatement statement = conn.prepareStatement(updateQuery);
            statement.setInt(1, dto.getMoney());
            statement.setString(2, dto.getName());

            int rowsAffected = statement.executeUpdate();
            System.out.println(rowsAffected);
            return rowsAffected == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}

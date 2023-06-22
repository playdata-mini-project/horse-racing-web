package com.naver.dao;

import com.naver.Dto.HorseInsertDto;
import com.naver.config.JdbcConnection;

import java.sql.*;


public class HorseDao {
    public boolean insert(HorseInsertDto horse) {
        try {
            Connection conn = new JdbcConnection().getJdbc();
            String sql = "insert into horse(name, age, height, weight) " +
                    "values(?, ?, ? , ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, horse.getName());
            pst.setInt(2, horse.getAge());
            pst.setFloat(3, horse.getHeight());
            pst.setFloat(4, horse.getWeight());
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
}

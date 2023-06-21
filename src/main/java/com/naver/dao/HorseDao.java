package com.naver.dao;

import com.naver.Dto.HorseInsertDto;
import com.naver.config.JdbcConnection;

import java.sql.*;


public class HorseDao {
    public void insert(HorseInsertDto horse) {
        Connection conn = new JdbcConnection().getJdbc();
        String sql = "insert into horse(name, age, height, weight) " +
                "values(?, ?, ? , ?)";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, horse.getName());
            pst.setInt(2, horse.getAge());
            pst.setFloat(3, horse.getHeight());
            pst.setFloat(4, horse.getWeight());
            pst.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

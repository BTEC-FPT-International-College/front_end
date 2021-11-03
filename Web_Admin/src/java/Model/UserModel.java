/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author nguyenbamang
 */
public class UserModel {
     public ArrayList<User> getListUser() {
        ArrayList<User> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_user where RoleID=3 ORDER BY Create_Day DESC");
            User acc = null;
            while (rs.next()) {
                acc = new User();
                acc.setUserID(rs.getString(1));
                acc.setFullName(rs.getString(2));
                acc.setPhone(rs.getString(3));
                acc.setEmail(rs.getString(4));
                acc.setAddress(rs.getString(5));
                acc.setDate_of_Birth(rs.getString(6));
                acc.setPassword(rs.getString(7));
                acc.setReward_point(rs.getInt(8));
                acc.setGender(rs.getString(9));
                acc.setCreateDate(rs.getString(10));
                acc.setUpdateDate(rs.getString(11));
                list.add(acc);
            }
            rs.close();
            stm.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
}

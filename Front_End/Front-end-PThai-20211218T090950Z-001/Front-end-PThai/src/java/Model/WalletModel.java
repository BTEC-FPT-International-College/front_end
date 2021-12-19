/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Wallet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class WalletModel {
    public ArrayList<Wallet> getListWalletByUserId(String id) {
        ArrayList<Wallet> list = new ArrayList<>();
        String sql = "SELECT * FROM user_wallet WHERE userid = ? ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Wallet acc = new Wallet();
                //acc.setUserID(rs.getString(1));
                acc.setWalletID(rs.getInt(1));
                acc.setSurplus(rs.getInt(2));
                acc.setRechargeDate(rs.getString(3));
                acc.setUserID(rs.getString(4));
                list.add(acc);
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
    public boolean updateProfile(int surplus, String userID ) {
        String sql = "UPDATE `user_wallet` SET `surplus` = ? WHERE `userid`= ?";

                
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setInt(1, surplus);
            ps.setString(2, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
    // hàm trử tiền
    public boolean minusCoin(int surplus, String userID ) {
        String sql = "UPDATE user_wallet\n" +
                    "SET surplus = (surplus - ?)\n" +
                    "where userid = ? ";

                
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setInt(1, surplus);
            ps.setString(2, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
    // cộng tiền
    public boolean plusCoin(int surplus, String userID ) {
        String sql = "UPDATE `user_wallet`\n" +
                    "SET `surplus` = (surplus + ?*5)\n" +
                    "where userid = ? ";

                
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setInt(1, surplus);
            ps.setString(2, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
}

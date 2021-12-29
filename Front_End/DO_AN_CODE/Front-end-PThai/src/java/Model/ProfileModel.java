/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Post;
import Entity.Profile;
import Entity.Wallet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ProfileModel {
    public ArrayList<Profile> getListProfile(String id) {
        ArrayList<Profile> list = new ArrayList<>();
        String sql = "SELECT fullname, phone, email, address, date_of_birth, reward_point, gender, password FROM tbl_user WHERE userid = ? ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Profile acc = new Profile();
                //acc.setUserID(rs.getString(1));
                acc.setFullName(rs.getString(1));
                acc.setPhone(rs.getString(2));
                acc.setEmail(rs.getString(3));
                acc.setAddress(rs.getString(4));
                acc.setDateOfBirth(rs.getString(5));
                acc.setRewardPoint(rs.getInt(6));
                acc.setGender(rs.getString(7));
                acc.setPassword(rs.getString(8));
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
    
    public boolean updateProfile(String fullName, String phone, String email, String address, String dateOfBirth, String gender, String userID ) {
        String sql = "UPDATE `tbl_user` SET `fullname` = ?, `phone` = ?, `email` = ?, `address` = ?, `date_of_birth` = ?, `gender` = ? WHERE `userid`= ?";

                
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setString(1, fullName);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setString(5, dateOfBirth);
            ps.setString(6, gender);
            ps.setString(7, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
    public boolean updateProfileRewardPoint(int rewardPoint, String userID ) {
        String sql = "UPDATE `tbl_user`\n" +
                "SET reward_point = (reward_point + ?) \n" +
                "where userid = ?";

                
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setInt(1, rewardPoint);
            ps.setString(2, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
    public boolean updatePass(String password, String userID ) {
        String sql = "UPDATE `tbl_user` SET `password` = ? WHERE `userid`= ?";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, userID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

     public boolean checkEmail(String email) {
        boolean result = false;
        String sql = "SELECT * FROM tbl_user WHERE email = ?";
        // mo ket noi toi sql server
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            // nem cau lenh SQL tu netbean sang SQL Server
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            // nhan ket qua tra ve
            ResultSet rs = ps.executeQuery();
            result = rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProfileModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
     public Profile getEmail(String email, String password) {
        Profile acc = null;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT userid FROM tbl_user WHERE email = ? AND   password = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                acc = new Profile();
                acc.setUserID(rs.getString(1));
     
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }
     public boolean  addAccount(String fullName, String email, String phone, 
            String password) {

        String sql = "INSERT INTO `tbl_user` (`fullname`, `email`,`phone`, `password`,  `roleid`)  VALUES (?, ?, ?, ?, 3) ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, password);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result >0;
    }
     public boolean  addUserToWallet(String userID) {
        String sql = "INSERT INTO `user_wallet` (`userid`,surplus)  VALUES (?,0) ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, userID);
           
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result >0;
    }
}
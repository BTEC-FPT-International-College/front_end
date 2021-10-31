/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.User;
import Entity.ViewDetailCate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author nguyenbamang
 */
public class SupModel {

    public ArrayList<User> getListSup() {
        ArrayList<User> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_user where RoleID=2 ORDER BY Create_Day DESC");
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

    public boolean checkUserExist(String id) {
        boolean result = false;
        String sql = "SELECT * FROM web.tbl_user where RoleID=2 AND UserID= ?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            result = rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result;
    }

    public boolean addSup(String id, String name, String phone, String Email, String add, String date, String pass, int point, String Gender, String CreatDay, int RoleID) {
        String sql = ""
                + "INSERT INTO web.tbl_user\n"
                + "(UserID,\n"
                + "FullName,\n"
                + "Phone,\n"
                + "Email,\n"
                + "Address,\n"
                + "Date_of_birth,\n"
                + "Password,\n"
                + "Reward_point,\n"
                + "Gender,\n"
                + "Create_Day,\n"
                + "RoleID)\n"
                + "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, phone);
            ps.setString(4, Email);
            ps.setString(5, add);
            ps.setString(6, date);
            ps.setString(7, pass);
            ps.setInt(8, point);
            ps.setString(9, Gender);
            ps.setString(10, CreatDay);
            ps.setInt(11, RoleID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public boolean deleteSup(String id) {
        String sql = "DELETE FROM web.tbl_user WHERE UserID = ?";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public User getSup(String id) {
        User acc = null;
        String sql = "SELECT * FROM web.tbl_user WHERE UserID = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
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
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public ViewDetailCate viewCateDetail(String id) {
        ViewDetailCate acc = null;
        String sql = "SELECT tbl_post.CategoryID,COUNT(tbl_post.PostID ) AS \"So luong\", COALESCE(SUM(tbl_transaction_history.Price),0) AS \"Sum\" \n"
                + "FROM tbl_post ,tbl_transaction_history \n"
                + "Where tbl_post.PostID = tbl_transaction_history.PostID \n"
                + "AND tbl_post.CategoryID = ?\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new ViewDetailCate();
                acc.setPostTotal(rs.getInt(2));
                acc.setVenueTotal(rs.getInt(3));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public boolean updateSup(String id, String name, String phone, String Email, String add, String date, String pass, String Gender, String UpdatDay) {
        String sql = "UPDATE `web`.`tbl_user`\n"
                + "SET\n"
                + "`FullName` = ?,\n"
                + "`Phone` = ?,\n"
                + "`Email` = ?,\n"
                + "`Address` = ?,\n"
                + "`Date_of_birth` = ?,\n"
                + "`Password` = ?,\n"
                + "`Gender` = ?,\n"
                + "`Update_Day` = ?\n"
                + "WHERE `UserID` = ?; ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, Email);
            ps.setString(4, add);
            ps.setString(5, date);
            ps.setString(6, pass);
            ps.setString(7, Gender);
            ps.setString(8, UpdatDay);
            ps.setString(9, id);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

}

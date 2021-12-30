/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Suppervisor;
import Entity.User;
import Entity.UserAdmin;
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
public class SupModelAdmin {

    public ArrayList<UserAdmin> getListSup() {
        ArrayList<UserAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_user where roleid=2 ORDER BY create_day DESC");
            UserAdmin acc = null;
            while (rs.next()) {
                acc = new UserAdmin();
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
        String sql = "SELECT * FROM web.tbl_user where roleid=2 AND userid= ?;";
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
                + "(userid,\n"
                + "fullname,\n"
                + "phone,\n"
                + "email,\n"
                + "address,\n"
                + "date_of_birth,\n"
                + "password,\n"
                + "reward_point,\n"
                + "gender,\n"
                + "create_day,\n"
                + "roleid)\n"
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

    public boolean addSupandCate(String userId, String cateID, int Read, int Delete) {
        String sql = "INSERT INTO `web`.`sup_cate`\n"
                + "(`categoryid`,\n"
                + "`userid`,\n"
                + "`read`,\n"
                + "`delete`)\n"
                + "VALUES\n"
                + "(?,?,?,?);";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cateID);
            ps.setString(2, userId);
            ps.setInt(3, Read);
            ps.setInt(4, Delete);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public boolean deleteSup(String id) {
        String sql = "DELETE FROM web.tbl_user WHERE userid = ?";
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

    public Suppervisor getSup(String id) {
        Suppervisor acc = null;
        String sql = "SELECT*\n"
                + "    FROM sup_cate , tbl_user ,tbl_category\n"
                + "    WHERE  sup_cate.userid = tbl_user.userid\n"
                + "    AND sup_cate.categoryid = tbl_category.categoryid\n"
                + "    AND sup_cate.userid = ?\n"
                + "    ;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new Suppervisor();
                acc.setUserID(rs.getString(5));
                acc.setFullName(rs.getString(6));
                acc.setPhone(rs.getString(7));
                acc.setEmail(rs.getString(8));
                acc.setAddress(rs.getString(9));
                acc.setDate_of_Birth(rs.getString(10));
                acc.setPassword(rs.getString(11));
                acc.setReward_point(rs.getInt(12));
                acc.setGender(rs.getString(13));
                acc.setCreateDate(rs.getString(14));
                acc.setUpdateDate(rs.getString(15));
                acc.setCategoryID(rs.getString(1));
                acc.setCategoryName(rs.getString(18));
                acc.setReadPostAmount(rs.getInt(3));
                acc.setDeletePostAmount(rs.getInt(4));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public boolean updateCateandSup(String userId, String cateID) {
        String sql = "UPDATE `web`.`sup_cate`\n"
                + "SET\n"
                + "`categoryid` = ?\n"
                + "WHERE userid = ? ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cateID);
            ps.setString(2, userId);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public boolean updateSup(String id, String name, String phone, String Email, String add, String date, String pass, String Gender, String UpdatDay) {
        String sql = "UPDATE `web`.`tbl_user`\n"
                + "SET\n"
                + "`fullname` = ?,\n"
                + "`phone` = ?,\n"
                + "`email` = ?,\n"
                + "`address` = ?,\n"
                + "`date_of_birth` = ?,\n"
                + "`password` = ?,\n"
                + "`gender` = ?,\n"
                + "`update_day` = ?\n"
                + "WHERE `userid` = ?; ";
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
    public ArrayList<UserAdmin> getLastIndexSup() {
        ArrayList<UserAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_user where roleid=2 ORDER BY create_day DESC limit 1");
            UserAdmin acc = null;
            while (rs.next()) {
                acc = new UserAdmin();
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

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import Entity.Suppervisor;
import Entity.User;
import Entity.ViewTotalPost;
import Entity.ViewTotalPurchases;
import Entity.ViewTotalRecharge;
import Entity.Wallet;
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
                acc.setStatus(rs.getInt(13));
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

    public ViewTotalPurchases viewTotalP(String id) {
        ViewTotalPurchases acc = null;
        String sql = "SELECT tbl_user.UserID, SUM(tbl_transaction_history.Price) AS \"Tong so tien thanh toan\" \n"
                + "FROM user_wallet , tbl_user , tbl_transaction_history \n"
                + "WHERE user_wallet.UserID = tbl_user.UserID \n"
                + "AND user_wallet.walletID = tbl_transaction_history.walletID\n"
                + "AND tbl_user.UserID = ? \n"
                + "GROUP BY tbl_user.UserID";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new ViewTotalPurchases();
                acc.setUserID(rs.getString(1));
                acc.setTotalPurchases(rs.getInt(2));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public Wallet viewWallet(String id) {
        Wallet acc = null;
        String sql = "SELECT * FROM user_wallet \n"
                + "WHERE UserID = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new Wallet();
                acc.setWalletID(rs.getString(1));
                acc.setSurplus(rs.getInt(3));
                acc.setUserID(rs.getString(4));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public ViewTotalPost viewTotalPost(String id) {
        ViewTotalPost acc = null;
        String sql = "SELECT UserID, COALESCE(COUNT(PostID),0) AS \"So luong\" FROM tbl_post\n"
                + "WHERE UserID = ?\n"
                + "GROUP BY (UserID)";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new ViewTotalPost();
                acc.setUserID(rs.getString(1));
                acc.setTotalPost(rs.getInt(2));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public ViewTotalRecharge viewTotalRecharge(String id) {
        ViewTotalRecharge acc = null;
        String sql = "SELECT tbl_recharge_transaction.walletID,user_wallet.UserID,tbl_user.FullName, SUM(tbl_recharge_transaction.Amount)\n"
                + "FROM tbl_recharge_transaction,tbl_user,user_wallet\n"
                + "where tbl_recharge_transaction.walletID = user_wallet.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND  user_wallet.UserID = ?\n"
                + "GROUP BY tbl_recharge_transaction.walletID ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new ViewTotalRecharge();
                acc.setTotal(rs.getInt(4));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public boolean deleteUser(String id) {
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

    public User getUser(String id) {
        User acc = null;
        String sql = "SELECT * FROM web.tbl_user WHERE UserID= ?;";
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
                acc.setStatus(rs.getInt(13));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public boolean updateStatus(String id, int Status) {
        String sql = "UPDATE `web`.`tbl_user`\n"
                + "SET\n"
                + "Status = ?\n"
                + "WHERE UserID = ?; ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, id);
            ps.setInt(1, Status);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
}

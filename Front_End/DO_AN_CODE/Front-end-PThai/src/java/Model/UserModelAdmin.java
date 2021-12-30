/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import Entity.Suppervisor;
import Entity.User;
import Entity.UserAdmin;
import Entity.ViewTotalPost;
import Entity.ViewTotalPurchases;
import Entity.ViewTotalRecharge;
import Entity.Wallet;
import Entity.WalletAdmin;
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
public class UserModelAdmin {

    public ArrayList<UserAdmin> getListUser() {
        ArrayList<UserAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_user where roleid=3 ORDER BY create_day DESC");
            UserAdmin acc = null;
            while (rs.next()) {
                acc = new UserAdmin();
                acc.setUserID(rs.getString(1));
                acc.setFullName(rs.getString(2));
                acc.setPhone(rs.getString(3));
                acc.setEmail(rs.getString(4));
                acc.setAddress(rs.getString(5));
                acc.setDate_of_Birth(rs.getString(6));
                acc.setPassword(rs.getString(8));
                acc.setReward_point(rs.getInt(9));
                acc.setGender(rs.getString(10));
                acc.setCreateDate(rs.getString(11));
                acc.setUpdateDate(rs.getString(12));
                acc.setStatus(rs.getInt(14));
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
        String sql = "SELECT tbl_user.userid, SUM(tbl_transaction_history.Price) AS \"Tong so tien thanh toan\" \n"
                + "FROM user_wallet , tbl_user , tbl_transaction_history \n"
                + "WHERE user_wallet.userid = tbl_user.userid \n"
                + "AND user_wallet.walletid = tbl_transaction_history.walletid\n"
                + "AND tbl_user.userid = ? \n"
                + "GROUP BY tbl_user.userid";
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

    public WalletAdmin viewWallet(String id) {
        WalletAdmin acc = null;
        String sql = "SELECT * FROM user_wallet \n"
                + "WHERE userid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new WalletAdmin();
                acc.setWalletID(rs.getString(1));
                acc.setSurplus(rs.getInt(2));
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
        String sql = "SELECT userid, COALESCE(COUNT(postid),0) AS \"So luong\" FROM tbl_post\n"
                + "WHERE userid = ?\n"
                + "GROUP BY (userid)";
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
        String sql = "SELECT tbl_recharge_transaction.walletid,user_wallet.userid,tbl_user.fullname, SUM(tbl_recharge_transaction.amount)\n"
                + "FROM tbl_recharge_transaction,tbl_user,user_wallet\n"
                + "where tbl_recharge_transaction.walletid = user_wallet.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND  user_wallet.userid = ?\n"
                + "GROUP BY tbl_recharge_transaction.walletid ";
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

    public UserAdmin getUser(String id) {
        UserAdmin acc = null;
        String sql = "SELECT * FROM web.tbl_user WHERE userid= ?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new UserAdmin();
                acc.setUserID(rs.getString(1));
                acc.setFullName(rs.getString(2));
                acc.setPhone(rs.getString(3));
                acc.setEmail(rs.getString(4));
                acc.setAddress(rs.getString(5));
                acc.setDate_of_Birth(rs.getString(6));
                acc.setPassword(rs.getString(8));
                acc.setReward_point(rs.getInt(9));
                acc.setGender(rs.getString(10));
                acc.setCreateDate(rs.getString(11));
                acc.setUpdateDate(rs.getString(12));
                acc.setStatus(rs.getInt(14));
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
                + "status = ?\n"
                + "WHERE userid = ?; ";
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

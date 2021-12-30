/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import Entity.RechargeAdmin;
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
public class RechargeModelAdmin {

    public ArrayList<RechargeAdmin> getListRecharge() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeid,\n"
                    + "STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d'),\n"
                    + "tbl_recharge_transaction.create_hour,\n"
                    + "tbl_recharge_transaction.walletid,\n"
                    + "user_wallet.userid,\n"
                    + "tbl_recharge_transaction.bank_account,\n"
                    + "tbl_recharge_transaction.bank,\n"
                    + "tbl_recharge_transaction.amount\n"
                    + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                    + "WHERE user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                    + "AND user_wallet.userid = tbl_user.userid;");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setAmount(rs.getInt(8));
                acc.setBank(rs.getString(7));
                acc.setBankAccount(rs.getString(6));
                acc.setWalletID(rs.getString(4));
                acc.setCreateHourl(rs.getString(3));
                acc.setUserID(rs.getString(5));
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

    public ArrayList<RechargeAdmin> getListRecharge1Hour() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeid,\n"
                    + "STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d'),\n"
                    + "tbl_recharge_transaction.create_hour,\n"
                    + "tbl_recharge_transaction.walletid,\n"
                    + "user_wallet.userid,\n"
                    + "tbl_recharge_transaction.bank_account,\n"
                    + "tbl_recharge_transaction.bank,\n"
                    + "tbl_recharge_transaction.amount\n"
                    + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                    + "WHERE user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                    + "AND user_wallet.userid = tbl_user.userid\n"
                    + "AND Concat(STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d'), \" \",tbl_recharge_transaction.create_hour)  \n"
                    + ">= DATE_SUB(NOW(), INTERVAL 1 HOUR);");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setAmount(rs.getInt(8));
                acc.setBank(rs.getString(7));
                acc.setBankAccount(rs.getString(6));
                acc.setWalletID(rs.getString(4));
                acc.setCreateHourl(rs.getString(3));
                acc.setUserID(rs.getString(5));
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

    public ArrayList<RechargeAdmin> top3Recharge() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.walletid,user_wallet.userid,tbl_user.fullname, SUM(tbl_recharge_transaction.amount)\n"
                    + "FROM tbl_recharge_transaction,tbl_user,user_wallet\n"
                    + "where tbl_recharge_transaction.walletid = user_wallet.walletid\n"
                    + "AND user_wallet.userid = tbl_user.userid\n"
                    + "GROUP BY tbl_recharge_transaction.walletid \n"
                    + "order by SUM(tbl_recharge_transaction.amount) desc\n"
                    + "limit 3;");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
                acc.setWalletID(rs.getString(1));
                acc.setUserID(rs.getString(2));
                acc.setFullName(rs.getString(3));
                acc.setSumRechargeofUser(rs.getInt(4));
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

    public ArrayList<RechargeAdmin> top1Recharge() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_recharge_transaction\n"
                    + "order by amount desc\n"
                    + "limit 1");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setWalletID(rs.getString(8));
                acc.setSumRechargeofUser(rs.getInt(3));
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

    public ArrayList<RechargeAdmin> getRechargebyWaalet(String walletID) {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        String sql = "SELECT tbl_recharge_transaction.rechargeid,\n"
                + "STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d'),\n"
                + "tbl_recharge_transaction.create_hour,\n"
                + "tbl_recharge_transaction.walletid,\n"
                + "user_wallet.userid,\n"
                + "tbl_recharge_transaction.bank_account,\n"
                + "tbl_recharge_transaction.bank,\n"
                + "tbl_recharge_transaction.amount\n"
                + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "WHERE user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND tbl_recharge_transaction.walletid = ?\n"
                + "order by STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d') desc;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, walletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RechargeAdmin acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setAmount(rs.getInt(8));
                acc.setBank(rs.getString(7));
                acc.setBankAccount(rs.getString(6));
                acc.setWalletID(rs.getString(4));
                acc.setCreateHourl(rs.getString(3));
                acc.setUserID(rs.getString(5));
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

    public ArrayList<RechargeAdmin> searchDatebyWallet(String start, String end, String WalletID) {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND STR_TO_DATE(create_date,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y')\n"
                + "AND tbl_recharge_transaction.walletid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            st.setString(3, WalletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RechargeAdmin acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(5));
                acc.setCreateDate(rs.getString(6));
                acc.setAmount(rs.getInt(7));
                acc.setName(rs.getString(8));
                acc.setBank(rs.getString(9));
                acc.setBankAccount(rs.getString(10));
                acc.setContent(rs.getString(11));
                acc.setWalletID(rs.getString(12));
                acc.setCreateHourl(rs.getString(13));
                acc.setUserID(rs.getString(14));
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

    public ArrayList<RechargeAdmin> searchDatebyWallet2(String start, String end, String WalletID) {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND STR_TO_DATE(create_date,'%Y/%m/%d')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y')\n"
                + "AND tbl_recharge_transaction.walletid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            st.setString(3, WalletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RechargeAdmin acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(5));
                acc.setCreateDate(rs.getString(6));
                acc.setAmount(rs.getInt(7));
                acc.setName(rs.getString(8));
                acc.setBank(rs.getString(9));
                acc.setBankAccount(rs.getString(10));
                acc.setContent(rs.getString(11));
                acc.setWalletID(rs.getString(12));
                acc.setCreateHourl(rs.getString(13));
                acc.setUserID(rs.getString(14));
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

    public ArrayList<RechargeAdmin> searchDate(String start, String end) {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND STR_TO_DATE(create_date,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RechargeAdmin acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(5));
                acc.setCreateDate(rs.getString(6));
                acc.setAmount(rs.getInt(7));
                acc.setName(rs.getString(8));
                acc.setBank(rs.getString(9));
                acc.setBankAccount(rs.getString(10));
                acc.setContent(rs.getString(11));
                acc.setWalletID(rs.getString(12));
                acc.setCreateHourl(rs.getString(13));
                acc.setUserID(rs.getString(14));
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

    public ArrayList<RechargeAdmin> searchDate2(String start, String end) {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                + "AND user_wallet.userid = tbl_user.userid\n"
                + "AND STR_TO_DATE(create_date,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                RechargeAdmin acc = new RechargeAdmin();
                acc.setRechargeID(rs.getString(5));
                acc.setCreateDate(rs.getString(6));
                acc.setAmount(rs.getInt(7));
                acc.setName(rs.getString(8));
                acc.setBank(rs.getString(9));
                acc.setBankAccount(rs.getString(10));
                acc.setContent(rs.getString(11));
                acc.setWalletID(rs.getString(12));
                acc.setCreateHourl(rs.getString(13));
                acc.setUserID(rs.getString(14));
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

}

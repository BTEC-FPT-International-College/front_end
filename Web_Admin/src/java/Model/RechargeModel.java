/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import Entity.Recharge;
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
public class RechargeModel {

    public ArrayList<Recharge> getListRecharge() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeID,\n"
                    + "STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y'),\n"
                    + "tbl_recharge_transaction.Create_Hour,\n"
                    + "tbl_recharge_transaction.walletID,\n"
                    + "user_wallet.UserID,\n"
                    + "tbl_recharge_transaction.Bank_Account,\n"
                    + "tbl_recharge_transaction.Bank,\n"
                    + "tbl_recharge_transaction.Amount\n"
                    + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                    + "WHERE user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                    + "AND user_wallet.UserID = tbl_user.UserID;");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
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

        public ArrayList<Recharge> getListRecharge1Hour() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeID,\n" +
"STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y'),\n" +
"tbl_recharge_transaction.Create_Hour,\n" +
"tbl_recharge_transaction.walletID,\n" +
"user_wallet.UserID,\n" +
"tbl_recharge_transaction.Bank_Account,\n" +
"tbl_recharge_transaction.Bank,\n" +
"tbl_recharge_transaction.Amount\n" +
"from user_wallet,tbl_recharge_transaction,tbl_user\n" +
"WHERE user_wallet.walletID = tbl_recharge_transaction.walletID\n" +
"AND user_wallet.UserID = tbl_user.UserID\n" +
"AND Concat(STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y'), \" \",tbl_recharge_transaction.Create_Hour)  \n" +
">= DATE_SUB(NOW(), INTERVAL 1 HOUR);");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
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
    
    public ArrayList<Recharge> top3Recharge() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.walletID,user_wallet.UserID,tbl_user.FullName, SUM(tbl_recharge_transaction.Amount)\n"
                    + "FROM tbl_recharge_transaction,tbl_user,user_wallet\n"
                    + "where tbl_recharge_transaction.walletID = user_wallet.walletID\n"
                    + "AND user_wallet.UserID = tbl_user.UserID\n"
                    + "GROUP BY tbl_recharge_transaction.walletID \n"
                    + "order by SUM(tbl_recharge_transaction.Amount) desc\n"
                    + "limit 3;");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
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

    public ArrayList<Recharge> top1Recharge() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_recharge_transaction\n"
                    + "order by Amount desc\n"
                    + "limit 1");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
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

    public ArrayList<Recharge> getRechargebyWaalet(String walletID) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT tbl_recharge_transaction.rechargeID,\n" +
"STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y'),\n" +
"tbl_recharge_transaction.Create_Hour,\n" +
"tbl_recharge_transaction.walletID,\n" +
"user_wallet.UserID,\n" +
"tbl_recharge_transaction.Bank_Account,\n" +
"tbl_recharge_transaction.Bank,\n" +
"tbl_recharge_transaction.Amount\n" +
"from user_wallet,tbl_recharge_transaction,tbl_user\n" +
"WHERE user_wallet.walletID = tbl_recharge_transaction.walletID\n" +
"AND user_wallet.UserID = tbl_user.UserID\n" +
"AND tbl_recharge_transaction.walletID = ?\n" +
"order by STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y') desc;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, walletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
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

    public ArrayList<Recharge> searchDatebyWallet(String start, String end, String WalletID) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND STR_TO_DATE(Create_Date,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y')\n"
                + "AND tbl_recharge_transaction.walletID = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            st.setString(3, WalletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
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

    public ArrayList<Recharge> searchDatebyWallet2(String start, String end, String WalletID) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND STR_TO_DATE(Create_Date,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y')\n"
                + "AND tbl_recharge_transaction.walletID = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            st.setString(3, WalletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
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

    public ArrayList<Recharge> searchDate(String start, String end) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND STR_TO_DATE(Create_Date,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
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

    public ArrayList<Recharge> searchDate2(String start, String end) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND STR_TO_DATE(Create_Date,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
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

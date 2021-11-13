/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Recharge;
import Entity.Transaction_History;
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
public class TransactionModel {

    public ArrayList<Transaction_History> getListTransaction() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                    + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                    + "order by Create_Day DESC;");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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

    public ArrayList<Transaction_History> top3UserBuy() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.walletID,SUM(tbl_transaction_history.Price) as'Total Price',user_wallet.UserID\n"
                    + "FROM tbl_transaction_history,user_wallet\n"
                    + "where tbl_transaction_history.walletID = user_wallet.walletID\n"
                    + "group by tbl_transaction_history.walletID\n"
                    + "order by SUM(tbl_transaction_history.Price) desc\n"
                    + "Limit 3");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setWalletID(rs.getString(1));
                acc.setTotalPrice(rs.getInt(2));
                acc.setUserID(rs.getString(3));
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

    public ArrayList<Transaction_History> topPacket() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.Packet,count(tbl_transaction_history.Packet) as'Number of Buy'\n"
                    + "FROM tbl_transaction_history\n"
                    + "group by tbl_transaction_history.Packet\n"
                    + "order by count(tbl_transaction_history.Price) desc");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setPacket(rs.getInt(1));
                acc.setNumberOfPacket(rs.getInt(2));
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

    public ArrayList<Transaction_History> top1PostBuy() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.PostID,tbl_post.UserID,SUM(tbl_transaction_history.Price) as'Total Price'\n"
                    + "FROM tbl_transaction_history,tbl_post\n"
                    + "where tbl_transaction_history.PostID = tbl_post.PostID\n"
                    + "group by tbl_transaction_history.PostID\n"
                    + "order by SUM(tbl_transaction_history.Price) desc\n"
                    + "Limit 1");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setUserID(rs.getString(2));
                acc.setTotalPrice(rs.getInt(3));
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

    public ArrayList<Transaction_History> searchDate(String start, String end) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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

    public ArrayList<Transaction_History> searchDatebyWallet(String start, String end ,String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND tbl_transaction_history.walletID = ?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(2, start);
            st.setString(3, end);
            st.setString(1, walletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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
    public ArrayList<Transaction_History> searchDatebyPost(String start, String end ,String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND tbl_transaction_history.PostID = ?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(2, start);
            st.setString(3, end);
            st.setString(1, postID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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

    public ArrayList<Transaction_History> getListByWallet(String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND tbl_transaction_history.walletID=?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, walletID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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
    public ArrayList<Transaction_History> getListByPost(String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n" +
"WHERE tbl_transaction_history.walletID = user_wallet.walletID\n" +
"AND tbl_transaction_history.PostID=?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, postID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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

    public ArrayList<Transaction_History> searchDate2(String start, String end) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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
        public ArrayList<Transaction_History> searchDate2byWallet(String start, String end,String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND tbl_transaction_history.walletID = ?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, walletID);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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
    public ArrayList<Transaction_History> searchDate2byPost(String start, String end,String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletID = user_wallet.walletID\n"
                + "AND tbl_transaction_history.PostID = ?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, postID);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
                acc.setUserID(rs.getString(11));
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

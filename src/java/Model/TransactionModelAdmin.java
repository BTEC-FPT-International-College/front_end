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
public class TransactionModelAdmin {

    public ArrayList<Transaction_History> getListTransaction() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d'),  COALESCE(null, postid, 123) FROM web.tbl_transaction_history,user_wallet\n" +
"                     WHERE tbl_transaction_history.walletid = user_wallet.walletid");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
               acc.setPostID(rs.getString(14));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

    public ArrayList<Transaction_History> getListTransactionby1Hour() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                    + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                    + "AND Concat(STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d'), \" \",tbl_transaction_history.create_hour)  \n"
                    + ">= DATE_SUB(NOW(), INTERVAL 1 HOUR);");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.walletid,SUM(tbl_transaction_history.price) as'Total Price',user_wallet.userid\n"
                    + "FROM tbl_transaction_history,user_wallet\n"
                    + "where tbl_transaction_history.walletid = user_wallet.walletid\n"
                    + "group by tbl_transaction_history.walletid\n"
                    + "order by SUM(tbl_transaction_history.price) desc\n"
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
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.packet,count(tbl_transaction_history.packet) as'Number of Buy'\n"
                    + "FROM tbl_transaction_history\n"
                    + "group by tbl_transaction_history.packet\n"
                    + "order by count(tbl_transaction_history.price) desc");
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
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.postid,tbl_post.userid,SUM(tbl_transaction_history.price) as'Total Price'\n"
                    + "FROM tbl_transaction_history,tbl_post\n"
                    + "where tbl_transaction_history.postid = tbl_post.postid\n"
                    + "group by tbl_transaction_history.postid\n"
                    + "order by SUM(tbl_transaction_history.price) desc\n"
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
        String sql = "SELECT * ,STR_TO_DATE(tbl_transaction_history.create_day,'%d/%m/%Y'),COALESCE(null, postid, 123) FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                acc.setPostID(rs.getString(14));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

    public ArrayList<Transaction_History> searchDatebyWallet(String start, String end, String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * ,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.walletid = ?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

    public ArrayList<Transaction_History> searchDatebyPost(String start, String end, String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.postid = ?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.walletid=?;";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
    
    public ArrayList<Transaction_History> getListByWallet1Hour(String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                    + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                    + "AND tbl_transaction_history.walletid = user_wallet.walletid\n"
                    + "AND tbl_transaction_history.walletid=?"
                    + "AND Concat(STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d'), \" \",tbl_transaction_history.create_hour)  \n"
                    + ">= DATE_SUB(NOW(), INTERVAL 1 HOUR);";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.postid=?;";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
    
     public ArrayList<Transaction_History> getListByPost1Hour(String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.postid=?"
                + "AND Concat(STR_TO_DATE(tbl_transaction_history.create_day,'%d/%m/%Y'), \" \",tbl_transaction_history.create_hour)  \n"
                    + ">= DATE_SUB(NOW(), INTERVAL 1 HOUR);";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

    public ArrayList<Transaction_History> searchDate2byWallet(String start, String end, String walletID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.walletid = ?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

    public ArrayList<Transaction_History> searchDate2byPost(String start, String end, String postID) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(tbl_transaction_history.create_day,'%Y/%m/%d') FROM web.tbl_transaction_history,user_wallet\n"
                + "WHERE tbl_transaction_history.walletid = user_wallet.walletid\n"
                + "AND tbl_transaction_history.postid = ?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
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
                acc.setPrice(rs.getInt(4));
                acc.setCreateDate(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(12));
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

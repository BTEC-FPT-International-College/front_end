/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Transaction;
import Entity.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Statement;

/**
 *
 * @author nguyenbamang
 */
public class TransactionModel {

   
    public ArrayList<Transaction> getListTransactionByUser(String id) {
        ArrayList<Transaction> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_transaction_history,user_wallet\n" +
" where tbl_transaction_history.walletid = user_wallet.walletid\n" +
" and user_wallet.userid = ? ORDER BY create_day DESC, create_hour DESC";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction acc = new Transaction();
                acc.setPostID(rs.getInt(1));
                acc.setWalletID(rs.getInt(2));
                acc.setPrice(rs.getInt(4));
                acc.setCreateDay(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getInt(7));
                acc.setPacket(rs.getInt(8));
                acc.setContent(rs.getString(3));
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
   
    public ArrayList<Post> getListTransactionByPost(String id) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT postid, title, end_day, province, district, ward, detail_address, sale_rent, status FROM tbl_post WHERE postid = ? ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
                acc.setPostId(rs.getInt(1));
                acc.setTitle(rs.getString(2));
                acc.setEndDay(rs.getString(3));
                acc.setProvince(rs.getString(4));
                acc.setDistrict(rs.getString(5));
                acc.setWard(rs.getString(6));
                acc.setDetailAddress(rs.getString(7));
                acc.setSaleRent(rs.getString(8));
                acc.setStatus(rs.getString(9));
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
    
    public boolean addTransaction(int postID, int walletID, String content, int price, String createDay, String createHour, int packet  ) {
        String sql = ""
                + "INSERT INTO `tbl_transaction_history`\n"
                + "(postid,\n"
                + "walletid,\n"
                + "content,\n"
                + "price,\n"
                + "create_day,\n"
                + "create_hour,\n"
                + "packet)\n"
                + "VALUES(?, ?, ?, ?, ?, ?, ?)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, postID);
            ps.setInt(2, walletID);
            ps.setString(3, content);
            ps.setInt(4, price);
            ps.setString(5, createDay);
            ps.setString(6, createHour);
            ps.setInt(7, packet);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    
     
}
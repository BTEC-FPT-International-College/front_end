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
" and user_wallet.userid = ? ORDER BY create_day DESC";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction acc = new Transaction();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(4));
                acc.setCreateDay(rs.getString(5));
                acc.setCreateHour(rs.getString(6));
                acc.setTransactionID(rs.getString(7));
                acc.setPacket(rs.getInt(8));
                acc.setUserID(rs.getString(9));
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
        String sql = "SELECT * FROM tbl_post WHERE postid = ? ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
                acc.setPostId(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvatar(rs.getString(3));
                acc.setArea(rs.getInt(4));
                acc.setPrice(rs.getInt(5));
                acc.setSaleRent(rs.getString(6));
                acc.setDescription(rs.getString(7));
                acc.setPhone(rs.getString(8));
                acc.setEmail(rs.getString(9));
                acc.setTotalView(rs.getInt(10));
                acc.setUserId(rs.getString(11));
                acc.setCreateDay(rs.getString(12));
                acc.setPostType(rs.getInt(13));
                acc.setStatus(rs.getString(14));
                acc.setReadUnread(rs.getInt(15));
                acc.setUpdateDay(rs.getString(16));
                acc.setLocation(rs.getString(17));
                acc.setCategoryId(rs.getString(18));
                acc.setPriod(rs.getInt(19));
                acc.setEndDay(rs.getString(20));
                acc.setRoom(rs.getInt(21));
                acc.setBath(rs.getInt(22));
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

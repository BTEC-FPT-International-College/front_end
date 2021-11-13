/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Post;
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
public class PostModel {
     public ArrayList<Post> getListPost() {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_post");
            Post acc = null;
            while (rs.next()) {
                acc = new Post();
                acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(4));
                acc.setPrice(rs.getInt(5));
                acc.setDescription(rs.getString(6));
                acc.setPhone(rs.getString(7));
                acc.setEmail(rs.getString(8));
                acc.setTotal_View(rs.getInt(9));
                acc.setUserID(rs.getString(10));
                acc.setCreate_Date(rs.getString(11));
                acc.setPostType(rs.getInt(7));
                acc.setStatus(rs.getString(8));
                acc.setReadUnread(rs.getInt(9));
                acc.setUpdate_Date(rs.getString(10));
                acc.setLocation(rs.getString(11));
                acc.setCategory(rs.getString(8));
                acc.setPriod(rs.getInt(9));
                acc.setEndDate(rs.getString(10));
                acc.setCreate_Hour(rs.getString(11));
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
     public boolean deletePots(String id) {
        String sql = "DELETE FROM web.tbl_user WHERE PostID = ?";
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

    public Post getPost(String id) {
        Post acc = null;
        String sql = "SELECT * FROM web.tbl_post\n" +
"where PostID = ?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new Post();
                acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(4));
                acc.setPrice(rs.getInt(5));
                acc.setDescription(rs.getString(6));
                acc.setPhone(rs.getString(7));
                acc.setEmail(rs.getString(8));
                acc.setTotal_View(rs.getInt(9));
                acc.setUserID(rs.getString(10));
                acc.setCreate_Date(rs.getString(11));
                acc.setPostType(rs.getInt(7));
                acc.setStatus(rs.getString(8));
                acc.setReadUnread(rs.getInt(9));
                acc.setUpdate_Date(rs.getString(10));
                acc.setLocation(rs.getString(11));
                acc.setCategory(rs.getString(8));
                acc.setPriod(rs.getInt(9));
                acc.setEndDate(rs.getString(10));
                acc.setCreate_Hour(rs.getString(11));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }
}

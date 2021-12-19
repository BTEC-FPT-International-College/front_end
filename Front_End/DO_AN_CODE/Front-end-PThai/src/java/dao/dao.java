/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import Entity.Post;
import Entity.Recharge;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class dao {
     public ArrayList<Post> getListPost() {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_post;");
            while (rs.next()) {
                Post p = new Post();
             p.setPostId(rs.getString(1));
                p.setTitle(rs.getString(2));
             p.setAvatar(rs.getString(3));
             p.setArea(rs.getInt(5));
            p.setPrice(rs.getInt(6));
            p.setSaleRent(rs.getString(7));
             p.setDescription(rs.getString(8));
             p.setCreateDay(rs.getString(13));
             p.setPostType(rs.getInt(14));
              p.setEndDay(rs.getString(21));
            p.setRoom(rs.getInt(22));
             p.setUserId(rs.getString(23));
             p.setLocation(rs.getString(18));
                list.add(p);
            }
            rs.close();
            stm.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
     
     public ArrayList<Post> getPostById(int postid) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post WHERE postid = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, postid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
    
                 Post p = new Post();
             p.setPostId(rs.getString(1));
                p.setTitle(rs.getString(2));
             p.setAvatar(rs.getString(3));
             p.setArea(rs.getInt(5));
            p.setPrice(rs.getInt(6));
            p.setSaleRent(rs.getString(7));
             p.setDescription(rs.getString(8));
             p.setCreateDay(rs.getString(13));
             p.setPostType(rs.getInt(14));
              p.setEndDay(rs.getString(21));
            p.setRoom(rs.getInt(22));
            p.setBath(rs.getInt(23));
             p.setUserId(rs.getString(12));
             p.setLocation(rs.getString(18));
                list.add(p);
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
  

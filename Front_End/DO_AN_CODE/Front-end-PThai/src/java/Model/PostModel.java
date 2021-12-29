/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tomcat.dbcp.dbcp2.ConnectionFactory;

/**
 *
 * @author Admin
 */
public class PostModel {
    public List<Post> getPosts() {
        List<Post> list = new ArrayList<>();
        
        String sql = "SELECT * FROM tbl_post";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()) {
                Post p = new Post();
//                p.setPostId(rs.getString(1));
                p.setTitle(rs.getString(2));
//                p.setAvatar(rs.getString(3));
//                p.setArea(rs.getString(4));
//                p.setPrice(rs.getString(5));
//                p.setSaleRent(rs.getString(6));
//                p.setDescription(rs.getString(7));
//                p.setCreateDay(rs.getString(8));
//                p.setPostType(rs.getString(9));
//                p.setEndDay(rs.getString(10));
//                p.setRoom(rs.getString(11));
//                p.setBath(rs.getString(12));
                list.add(p);
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(PostModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
 public boolean addPost(int postCost, String title, String avatar, int area, int price, String saleRent,
            String province, String district, String ward, String detailAddress, String description,
            String phone, String email, String createDay, int postType, int categoryId,  
            String endDay, int room, int bath, String userId, String provinceValue, String Image ) {
        String sql = ""
                + "INSERT INTO `tbl_post`\n"
//                + "(postid,\n"
                + "(post_cost,\n"
                + "title,\n"
                + "avatar,\n"
                + "area,\n"
                + "province,\n"
                + "district,\n"
                + "ward,\n"
                + "detail_address,\n"
                + "price,\n"
                + "sale_rent,\n"
                + "description,\n"
                + "phone,\n"
                + "email,\n"
                + "create_day,\n"
                + "post_type,\n"
                + "categoryid,\n"
                + "end_day,\n"
                + "room,\n"
                + "bath,\n"
                + "userid,\n"
                + "province_value,\n"
                + "read_unread,\n"
                + "image)\n"
                + "VALUES(?, ?, ?, ?, ?,   ?, ?, ?, ?, ?,   ?, ?, ?, ?, ?,  ?, ?, ?, ?, ?,  ?, 0,?)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setInt(1, postCost);
            ps.setString(2, title);
            ps.setString(3, avatar);
            ps.setInt(4, area);
            ps.setString(5, province);
            ps.setString(6, district);
            ps.setString(7, ward);
            ps.setString(8, detailAddress);
            ps.setInt(9, price);
            ps.setString(10, saleRent);
            ps.setString(11, description);
            ps.setString(12, phone);
            ps.setString(13, email);
            ps.setString(14, createDay);
            ps.setInt(15, postType);
            ps.setInt(16, categoryId);
            ps.setString(17, endDay);
            ps.setInt(18, room);
            ps.setInt(19, bath);
            ps.setString(20, userId);
            ps.setString(21, provinceValue);
            ps.setString(22, Image);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    
    
    
    public ArrayList<Post> getPostById(String postid) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT postid FROM web.tbl_post WHERE userid = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, postid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
    
                 Post p = new Post();
             p.setPostId(rs.getInt(1));
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
    
    public boolean deletePost(String id) {
        String sql = "DELETE FROM tbl_post WHERE postid = ?";
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



    
}
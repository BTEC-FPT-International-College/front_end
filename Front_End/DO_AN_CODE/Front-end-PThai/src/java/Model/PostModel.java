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
    
    public boolean addPost(String title, String avatar, int area, int price, String saleRent,
            String location, String description,  String createDay, int postType, 
            String endDay, int room, int bath, String userId ) {
        String sql = ""
                + "INSERT INTO `tbl_post`\n"
//                + "(postid,\n"
                + "(title,\n"
                + "avatar,\n"
                + "area,\n"
                + "location,\n"
                + "price,\n"
                + "sale_rent,\n"
                + "description,\n"
                + "create_day,\n"
                + "post_type,\n"
                + "end_day,\n"
                + "room,\n"
                + "bath,\n"
                + "userid,\n"
                + "read_unread)\n"
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setString(1, title);
            ps.setString(2, avatar);
            ps.setInt(3, area);
            ps.setString(4, location);
            ps.setInt(5, price);
            ps.setString(6, saleRent);
            ps.setString(7, description);
            ps.setString(8, createDay);
            ps.setInt(9, postType);
            ps.setString(10, endDay);
            ps.setInt(11, room);
            ps.setInt(12, bath);
            ps.setString(13, userId);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
    
    
   
    

    
}

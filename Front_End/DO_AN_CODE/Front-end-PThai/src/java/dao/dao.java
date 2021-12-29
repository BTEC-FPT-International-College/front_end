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
                p.setPostId(rs.getInt(1));
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
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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
                p.setPostId(rs.getInt(1));
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
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setStatus(rs.getString(15));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));
                p.setImage(rs.getString(4));
                p.setCategoryId(rs.getInt(19));

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

    public ArrayList<Post> getNext6(int amount) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();

        String sql = ("SELECT * FROM web.tbl_post,tbl_user \n"
                + "where tbl_post.userid = tbl_user.userid \n"
                + "AND Date(tbl_post.end_day) - current_date() > 0\n"
                + "ORDER BY tbl_post.post_type DESC,\n"
                + "tbl_post.postid DESC,\n"
                + "tbl_user.reward_point DESC LIMIT 6 OFFSET ?");
        try {
            Statement stm = conn.createStatement();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, amount);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post p = new Post();
                p.setPostId(rs.getInt(1));
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
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));
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

    public ArrayList<Post> getTop6() {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_post,tbl_user \n"
                    + "where tbl_post.userid = tbl_user.userid \n"
                    + "AND Date(tbl_post.end_day) - current_date() > 0\n"
                    + "ORDER BY tbl_post.post_type DESC,\n"
                    + "tbl_post.postid DESC,tbl_user.reward_point DESC LIMIT 6 ;");
            while (rs.next()) {
                Post p = new Post();
                p.setPostId(rs.getInt(1));
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
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));
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

    public ArrayList<Post> getPostByUserID(String userid) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post WHERE userid = ? order by postid DESC";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, userid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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

    public ArrayList<Post> filterPostByUserIDAndDate(String userid, String fromedate, String todate) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post\n"
                + " WHERE userid = ?\n"
                + " AND date(tbl_post.create_day) BETWEEN date(?) AND date(?)\n"
                + "order by postid DESC";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, userid);
            st.setString(2, fromedate);
            st.setString(3, todate);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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

    public boolean updatePost(String title, String avatar, int area, int price, String saleRent,
            String province, String district, String ward, String detailAddress, String description,
            String phone, String email, String updateDay, int postType,
            String endDay, int room, int bath, int categoryId, String provinceValue, String image, int postId) {
        String sql = "UPDATE `tbl_post` SET `title` = ?, "
                + "`avatar` = ?, `area` = ?,`price` = ?, "
                + "`sale_rent` = ?,  `province` = ?, `district` = ?, "
                + "`ward` = ? , `detail_address` = ? , `description` = ?,"
                + " `phone` = ?, `email` = ?, `update_day` = ?, `post_type` = ?,"
                + " `end_day` = ?, `room` = ?, `bath` = ? , `categoryid` = ?, `province_value` = ?, `image` = ? WHERE `postid`= ?";

        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setString(1, title);
            ps.setString(2, avatar);
            ps.setInt(3, area);
            ps.setInt(4, price);
            ps.setString(5, saleRent);
            ps.setString(6, province);
            ps.setString(7, district);
            ps.setString(8, ward);
            ps.setString(9, detailAddress);
            ps.setString(10, description);
            ps.setString(11, phone);
            ps.setString(12, email);
            ps.setString(13, updateDay);
            ps.setInt(14, postType);
            ps.setString(15, endDay);
            ps.setInt(16, room);
            ps.setInt(17, bath);
            ps.setInt(18, categoryId);
            ps.setString(19, provinceValue);
            ps.setString(20, image);
           
            ps.setInt(21, postId);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public List<Post> searchPost(String provincetxt, String districttxt, String saleOrRent) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post,tbl_user \n"
                + "where tbl_post.userid = tbl_user.userid\n"
                + " and province = ? and district = ? \n"
                + "AND Date(tbl_post.end_day) - current_date() > 0\n"
                + "	  and sale_rent= ? ORDER BY tbl_post.post_type DESC,\n"
                + "	tbl_post.postid DESC,tbl_user.reward_point DESC LIMIT 6";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, provincetxt);
            st.setString(2, districttxt);
            st.setString(3, saleOrRent);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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

    public List<Post> filterPost(String saleOrRent) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post,tbl_user where tbl_post.userid = tbl_user.userid\n"
                + "    and sale_rent= ? \n"
                + "    AND Date(tbl_post.end_day) - current_date() > 0\n"
                + "    ORDER BY tbl_post.post_type DESC,\n"
                + "	tbl_post.postid DESC,tbl_user.reward_point DESC LIMIT 24";
        try {
            PreparedStatement st = conn.prepareStatement(sql);

            st.setString(1, saleOrRent);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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
    public ArrayList<Post> filterPostByAvaible(String userid) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post \n" +
                     "WHERE userid = ?\n" +
                     "AND Date(tbl_post.end_day) - current_date() > 0\n" +
                     "order by postid DESC";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, userid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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
    public ArrayList<Post> filterPostByExpired(String userid) {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        String sql = "SELECT * FROM web.tbl_post \n" +
                     "WHERE userid = ?\n" +
                     "AND Date(tbl_post.end_day) - current_date() < 0\n" +
                     "order by postid DESC";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, userid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Post p = new Post();
                p.setPostId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setAvatar(rs.getString(3));
                p.setArea(rs.getInt(5));
                p.setPrice(rs.getInt(6));
                p.setSaleRent(rs.getString(7));
                p.setDescription(rs.getString(8));
                p.setCreateDay(rs.getString(13));
                p.setPostType(rs.getInt(14));
                p.setStatus(rs.getString(15));
                p.setUpdateDay(rs.getString(17));
                p.setEndDay(rs.getString(21));
                p.setRoom(rs.getInt(22));
                p.setUserId(rs.getString(12));
                p.setBath(rs.getInt(23));
                p.setProvince(rs.getString(18));
                p.setDistrict(rs.getString(24));
                p.setWard(rs.getString(25));
                p.setDetailAddress(rs.getString(26));

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
    public boolean setComment(String name, String email,   String phone,  String content, String create_day, int postid ) {
        String sql = "Insert into `tbl_comment` (`name`, `email`,`phone`, `content`, `create_day`, `postid`)  VALUES (?, ?, ?, ?, ?, ?)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, content);
            ps.setString(5, create_day);
            ps.setInt(6, postid);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result >0;
    }
}

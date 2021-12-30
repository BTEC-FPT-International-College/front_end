/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Post;
import Entity.PostAdmin;
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
public class PostModelAdmin {

    public ArrayList<PostAdmin> getListPost() {
        ArrayList<PostAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT *,STR_TO_DATE(create_day,'%Y/%m/%d') FROM web.tbl_post");
            PostAdmin acc = null;
            while (rs.next()) {
                acc = new PostAdmin();
                acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

    public ArrayList<PostAdmin> getListPostByUser(String id) {
        ArrayList<PostAdmin> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(create_day,'%d/%m/%Y') FROM web.tbl_post\n"
                + "WHERE userid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PostAdmin acc = new PostAdmin();
                acc = new PostAdmin();
               acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

    public boolean updateRead(String id) {
        String sql = "UPDATE web.tbl_post set `read_unread` = 0 WHERE postid =?";
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

    public PostAdmin getPost(String id) {
        PostAdmin acc = null;
        String sql = "SELECT * FROM web.tbl_post\n"
                + "where postid = ?;";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new PostAdmin();
                acc = new PostAdmin();
                acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }
    public PostAdmin TotalPost() {
        PostAdmin acc = null;
        String sql = "SELECT Count(postid) FROM tbl_post";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new PostAdmin();
                acc.setTotal_View(rs.getInt(1));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public ArrayList<PostAdmin> searchDate(String start, String end) {
        ArrayList<PostAdmin> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(create_day,'%Y/%m/%d')  FROM tbl_post\n"
                + "WHERE STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PostAdmin acc = new PostAdmin();
                acc = new PostAdmin();
               acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

    public ArrayList<PostAdmin> searchDate2(String start, String end) {
        ArrayList<PostAdmin> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(create_day,'%Y/%m/%d')  FROM tbl_post\n"
                + "WHERE STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PostAdmin acc = new PostAdmin();
                acc = new PostAdmin();
               acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

    public ArrayList<PostAdmin> searchDatebyU(String id, String start, String end) {
        ArrayList<PostAdmin> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(create_day,'%Y/%m/%d') FROM tbl_post\n"
                + "where userid =?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PostAdmin acc = new PostAdmin();
                acc = new PostAdmin();
               acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

    public ArrayList<PostAdmin> searchDate2byU(String id, String start, String end) {
        ArrayList<PostAdmin> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(create_day,'%Y/%m/%d') FROM tbl_post\n"
                + "where userid = ?\n"
                + "AND STR_TO_DATE(create_day,'%Y/%m/%d')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PostAdmin acc = new PostAdmin();
                acc = new PostAdmin();
                acc.setPostID(rs.getString(1));
                acc.setTitle(rs.getString(2));
                acc.setAvartar(rs.getString(3));
                acc.setArea(rs.getInt(5));
                acc.setPrice(rs.getInt(6));
                acc.setSale_rent(rs.getString(7));
                acc.setDescription(rs.getString(8));
                acc.setPhone(rs.getString(9));
                acc.setEmail(rs.getString(10));
                acc.setTotal_View(rs.getInt(11));
                acc.setUserID(rs.getString(12));
                acc.setCreate_Date(rs.getString(13));
                acc.setPostType(rs.getInt(14));
                acc.setStatus(rs.getString(15));
                acc.setReadUnread(rs.getInt(16));
                acc.setUpdate_Date(rs.getString(17));
                acc.setCategory(rs.getString(19));
                acc.setPriod(rs.getInt(20));
                acc.setEndDate(rs.getString(21));
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

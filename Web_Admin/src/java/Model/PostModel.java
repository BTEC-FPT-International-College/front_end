/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Post;
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
public class PostModel {

    public ArrayList<Post> getListPost() {
        ArrayList<Post> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y') FROM web.tbl_post");
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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

    public ArrayList<Post> getListPostByUser(String id) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y') FROM web.tbl_post\n"
                + "WHERE UserID = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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
        String sql = "SELECT * FROM web.tbl_post\n"
                + "where PostID = ?;";
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }
    public Post TotalPost() {
        Post acc = null;
        String sql = "SELECT Count(PostID) FROM tbl_post";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new Post();
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

    public ArrayList<Post> searchDate(String start, String end) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y')  FROM tbl_post\n"
                + "WHERE STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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

    public ArrayList<Post> searchDate2(String start, String end) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y')  FROM tbl_post\n"
                + "WHERE STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%d/%m/%Y') and STR_TO_DATE(?,'%d/%m/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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

    public ArrayList<Post> searchDatebyU(String id, String start, String end) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y') FROM tbl_post\n"
                + "where UserID =?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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

    public ArrayList<Post> searchDate2byU(String id, String start, String end) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "SELECT *,STR_TO_DATE(Create_Day,'%d/%m/%Y') FROM tbl_post\n"
                + "where UserID = ?\n"
                + "AND STR_TO_DATE(Create_Day,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, start);
            st.setString(3, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Post acc = new Post();
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
                acc.setCreate_Date(rs.getString(21));
                acc.setPostType(rs.getInt(12));
                acc.setStatus(rs.getString(13));
                acc.setReadUnread(rs.getInt(14));
                acc.setUpdate_Date(rs.getString(15));
                acc.setLocation(rs.getString(16));
                acc.setCategory(rs.getString(17));
                acc.setPriod(rs.getInt(18));
                acc.setEndDate(rs.getString(19));
                acc.setCreate_Hour(rs.getString(20));
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

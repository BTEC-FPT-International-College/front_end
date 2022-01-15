/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import Entity.ViewDetailCate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author MarkTran
 */
public class CategoryAdmin {
    public ArrayList<Category> getListCategory() {
        ArrayList<Category> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT categoryid,\n" +
            "COALESCE(name,\"You haven't given a name yet\"),\n" +
            "coalesce(image,\"You haven't given a image yet\"),\n" +
            "coalesce(description,\"You haven't given a description yet\"),\n" +
            "create_day,\n" +
            "coalesce(update_day,\"It has never been updated\")\n" +
            "FROM web.tbl_category ORDER BY create_day DESC");
            Category acc = null;
            while (rs.next()) {
                acc = new Category();
                acc.setCateID(rs.getString(1));
                acc.setCateName(rs.getString(2));
                acc.setCateImage(rs.getString(3));
                acc.setCateDes(rs.getString(4));
                acc.setCateCreateDate(rs.getString(5));
                acc.setCateUpdateDate(rs.getString(6));
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

    public boolean checkCateExsist(String id) {
        boolean result = false;
        String sql = "SELECT * FROM tbl_category WHERE categoryid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            result = rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result;
    }

    public boolean addCategory(String id, String name, String img, String des, String CreatDay) {
        String sql = "INSERT INTO tbl_category(categoryid,name,image,description,create_day) VALUES(?,?,?,?,?)";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, img);
            ps.setString(4, des);
            ps.setString(5, CreatDay);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

    public boolean deleteCC(String id) {
        String sql = "DELETE FROM tbl_category WHERE categoryid = ?";
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

    public Category getCategory(String id) {
        Category acc = null;
        String sql = "SELECT * FROM tbl_category WHERE categoryid = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new Category();
                acc.setCateID(rs.getString(1));
                acc.setCateName(rs.getString(2));
                acc.setCateImage(rs.getString(3));
                acc.setCateDes(rs.getString(4));
                acc.setCateCreateDate(rs.getString(5));
                acc.setCateUpdateDate(rs.getString(6));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public ViewDetailCate viewCateDetail(String id) {
        ViewDetailCate acc = null;
        String sql = "SELECT tbl_post.categoryid,COUNT(tbl_post.postid ) AS \"So luong\", COALESCE(SUM(tbl_transaction_history.price),0) AS \"Sum\" \n"
                + "FROM tbl_post ,tbl_transaction_history \n"
                + "Where tbl_post.postid = tbl_transaction_history.postid \n"
                + "AND tbl_post.categoryid = ?\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                acc = new ViewDetailCate();
                acc.setPostTotal(rs.getInt(2));
                acc.setVenueTotal(rs.getInt(3));
            }
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }

    public boolean updateCC(String id, String name, String img, String des, String UpdateDate) {
        String sql = "UPDATE tbl_category SET name = ?, "
                + "image = ?, description = ?, update_day = ? WHERE categoryid = ? ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, des);
            ps.setString(4, UpdateDate);
            ps.setString(5, id);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }
}

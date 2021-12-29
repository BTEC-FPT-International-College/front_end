/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

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
            ResultSet rs = stm.executeQuery("SELECT CategoryID,\n" +
"COALESCE(Name,\"You haven't given a name yet\"),\n" +
"coalesce(Img,\"You haven't given a image yet\"),\n" +
"coalesce(Des,\"You haven't given a description yet\"),\n" +
"Create_Day,\n" +
"coalesce(Update_Day,\"It has never been updated\")\n" +
"FROM web.tbl_category ORDER BY Create_Day DESC");
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
        String sql = "SELECT * FROM tbl_category WHERE CategoryID = ?";
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
        String sql = "INSERT INTO tbl_category(CategoryID,Name,Img,Des,Create_Day) VALUES(?,?,?,?,?)";
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
        String sql = "DELETE FROM tbl_category WHERE CategoryID = ?";
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
        String sql = "SELECT * FROM tbl_category WHERE CategoryID = ?";
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
        String sql = "SELECT tbl_post.CategoryID,COUNT(tbl_post.PostID ) AS \"So luong\", COALESCE(SUM(tbl_transaction_history.Price),0) AS \"Sum\" \n"
                + "FROM tbl_post ,tbl_transaction_history \n"
                + "Where tbl_post.PostID = tbl_transaction_history.PostID \n"
                + "AND tbl_post.CategoryID = ?\n"
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
        String sql = "UPDATE tbl_category SET Name = ?, "
                + "Img = ?, Des = ?, Update_Day = ? WHERE CategoryID = ? ";
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

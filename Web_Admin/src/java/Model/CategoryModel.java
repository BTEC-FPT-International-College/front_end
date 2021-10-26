/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
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
public class CategoryModel {
     public ArrayList<Category> getListCategory() {
        ArrayList<Category> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM tbl_category ORDER BY Create_Day DESC");
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

    public boolean addCategory(String id, String name, String img, String des,String CreatDay) {
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
     public ArrayList<Category> get(String id) {
        String sql = "SELECT * FROM tbl_category WHERE CategoryID = ? ";
        ArrayList<Category> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            Category acc = null;
            // lay du lieu 
            while (rs.next()) {
                acc = new Category();
                acc.setCateID(rs.getString(1));
                acc.setCateName(rs.getString(2));
                acc.setCateImage(rs.getString(3));
                acc.setCateDes(rs.getString(4));
                acc.setCateUpdateDate(rs.getString(6));
                list.add(acc);
            }
            rs.close();
            conn.close();
        } catch (Exception e) {
        }
        return list;
}
    public boolean updateCC(String id, String des, String img, String name,String UpdateDate) {
        String sql = "UPDATE tbl_category SET Name = ?, "
                + "Imag = ?, Des = ?, Update_Day = ? WHERE CategoryID = ? ";
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

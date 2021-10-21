/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import java.sql.Connection;
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
            ResultSet rs = stm.executeQuery("SELECT * FROM tbl_category");
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
}

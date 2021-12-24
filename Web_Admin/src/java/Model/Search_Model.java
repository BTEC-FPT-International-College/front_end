/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author nguyenbamang
 */
public class Search_Model {
    public ArrayList<Post> getListPostByUser(String sale_rent, String location) {
        ArrayList<Post> list = new ArrayList<>();
        String sql = "";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, sale_rent);
            st.setString(2, location);
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

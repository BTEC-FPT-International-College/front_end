/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguyenbamang
 */
public class LoginModel {
         public boolean checkLogin(String e, String p) {
        boolean result = false;
        String sql = "SELECT * FROM tbl_user WHERE Email = ? AND PassWord = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, e);
            ps.setString(2, p);
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
    public User getlogin(String email, String password) {
        User acc = null;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT FullName, RoleID,UserID FROM tbl_user WHERE Email = ? AND PassWord = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                acc = new User();
                acc.setUserID(rs.getString(3));
                acc.setFullName(rs.getString(1));
                acc.setRoleId(rs.getInt(2));
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return acc;
    }
}

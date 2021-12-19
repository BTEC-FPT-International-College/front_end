/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Profile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mangn
 */
public class checkLogin {
     public boolean checkLogin(String u, String p) {
        boolean result = false;
        String sql = "SELECT * FROM tbl_user WHERE email = ? AND password = ?";
        // mo ket noi toi sql server
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            // nem cau lenh SQL tu netbean sang SQL Server
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u);
            ps.setString(2, p);
            // nhan ket qua tra ve
            ResultSet rs = ps.executeQuery();

            result = rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    public Profile getlogin(String email, String password) {
        Profile acc = null;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT email, roleid,userid FROM tbl_user WHERE email = ? AND   password = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                acc = new Profile();
                acc.setUserID(rs.getString(3));
                acc.setEmail(rs.getString(1));
                acc.setRoleID(rs.getString(2));
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }
}

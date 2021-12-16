package com.btecland.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.btecland.web.model.Profile;
import com.btecland.web.model.ProfileModel;
import com.btecland.web.model.UserModel;

public class checkLogin {
	  public boolean checkLogin(String username, String password) {
	        boolean result = false;
	        String sql = "SELECT * FROM web.tbl_user WHERE username = ? AND password = ?";
	        // mo ket noi toi sql server
	        GetConnection cn = new GetConnection();
	        Connection conn = cn.getConnection();
	        try {
	            // nem cau lenh SQL tu netbean sang SQL Server
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);
	            ps.setString(2, password);
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
	    public Profile getlogin(String username, String password) {
	        Profile acc = null;
	        GetConnection cn = new GetConnection();
	        Connection conn = cn.getConnection();
	        try {
	            PreparedStatement ps = conn.prepareStatement("SELECT fullname, roleid,userid FROM tbl_user WHERE username = ? AND   password = ?");
	            ps.setString(1, username);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                acc = new Profile();
	                acc.setUserID(rs.getString(3));
	                acc.setFullName(rs.getString(1));
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

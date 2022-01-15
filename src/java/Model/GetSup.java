/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Profile;
import Entity.RechargeAdmin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class GetSup {
    public Profile getCateBySub(String id) {
        Profile acc = null;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT sup_cate.categoryid FROM web.tbl_user,web.sup_cate\n" +
"WHERE tbl_user.roleid =2\n" +
"AND web.tbl_user.userid = web.sup_cate.userid\n" +
"AND tbl_user.userid = ?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                acc = new Profile();
                acc.setCateid(rs.getString(1));
                
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GetSup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

}
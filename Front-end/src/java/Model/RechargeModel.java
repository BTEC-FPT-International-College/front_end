/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Recharge;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class RechargeModel {
    public ArrayList<Recharge> getListRecharge() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("Select rechargeid, content, amount, create_date FROM tbl_recharge_transaction  ORDER BY rechargeID DESC");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
                acc.setRechargeID(rs.getString(1));
                acc.setContent(rs.getString(2));
                acc.setAmount(rs.getInt(3));
                acc.setCreate_Date(rs.getString(4));
                list.add(acc);
            }
            rs.close();
            stm.close();
            conn.close();
        } catch(SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
            
    }
}

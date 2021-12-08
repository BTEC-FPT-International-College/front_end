package com.btecland.web.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.btecland.web.model.RechargeModel;

public class RechargeDao {
	public ArrayList<RechargeModel> getListRecharge() {
        ArrayList<RechargeModel> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("Select rechargeid, name, content, amount, create_date FROM web.tbl_recharge_transaction  ORDER BY rechargeID ASC");
            RechargeModel acc = null;
            while (rs.next()) {
                acc = new RechargeModel();
                acc.setRechargeid(rs.getString(1));
                acc.setName(rs.getString(2));;
                acc.setContent(rs.getString(3));
                acc.setAmount(rs.getInt(4));
                acc.setCreate_date(rs.getString(5));
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

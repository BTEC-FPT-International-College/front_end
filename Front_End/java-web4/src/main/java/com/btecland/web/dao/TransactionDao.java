package com.btecland.web.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.btecland.web.model.TransactionModel;

public class TransactionDao {
	public ArrayList<TransactionModel> getListTransaction() {
        ArrayList<TransactionModel> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT postid, walletid, price, create_day FROM web.tbl_transaction_history ORDER BY create_day DESC");
            TransactionModel acc = null;
            while (rs.next()) {
                acc = new TransactionModel();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getDouble(3));
                acc.setCreateDay(rs.getString(4));
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

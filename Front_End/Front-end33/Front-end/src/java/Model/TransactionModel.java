/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Transaction;
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
public class TransactionModel {

    public ArrayList<Transaction> getListTransaction() {
        ArrayList<Transaction> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT postid, walletid, price, create_day FROM tbl_transaction_history ORDER BY create_day DESC");
            Transaction acc = null;
            while (rs.next()) {
                acc = new Transaction();
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Recharge;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class RechargeModel {
    public ArrayList<Recharge> getListRecharge(String id) {
        ArrayList<Recharge> list = new ArrayList<>();
        String sql = "SELECT * FROM web.tbl_recharge_transaction,user_wallet\n" +
"where tbl_recharge_transaction.walletid = user_wallet.walletid\n" +
"and user_wallet.userid = ? ";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
             PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Recharge acc = new Recharge();
                //acc.setUserID(rs.getString(1));
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setAmount(rs.getInt(3));
                acc.setName(rs.getString(4));
                acc.setBank(rs.getString(5));
                acc.setBankAccount(rs.getString(6));
                acc.setContent(rs.getString(7));
                acc.setWalletID(rs.getInt(8));
                acc.setCreateHour(rs.getString(9));
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
    
    public boolean addRecharge(String createDate, int amount, String name, 
            String bank, String bankAccount, String content, String createHour,
            int walletID) {
        String sql = "INSERT INTO `tbl_recharge_transaction` (`create_date`, `amount`,`name`, `bank`, `bank_account`, `content`, `create_hour`, `walletid`)  VALUES (?, ?, ?, ?, ?, ?, ?, ?) ";
        int result = 0;
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
//          
            ps.setString(1, createDate);
            ps.setInt(2, amount);
            ps.setString(3, name);
            ps.setString(4, bank);
            ps.setString(5, bankAccount);
            ps.setString(6, content);
//            ps.setString(7, walletID);
            ps.setString(7, createHour);
            ps.setInt(8, walletID);
            result = ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return result > 0;
    }

}

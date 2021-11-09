/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Recharge;
import Entity.Transaction_History;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author nguyenbamang
 */
public class TransactionModel {

    public ArrayList<Transaction_History> getListTransaction() {
        ArrayList<Transaction_History> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM web.tbl_transaction_history\n"
                    + "order by Create_Day DESC;");
            Transaction_History acc = null;
            while (rs.next()) {
                acc = new Transaction_History();
                acc.setPostID(rs.getString(1));
                acc.setWalletID(rs.getString(2));
                acc.setPrice(rs.getInt(3));
                acc.setCreateDate(rs.getString(4));
                acc.setCreateHour(rs.getString(5));
                acc.setTransactionID(rs.getInt(6));
                acc.setPacket(rs.getInt(7));
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
    public ArrayList<Transaction_History> searchDate(String start, String end) {
        ArrayList<Transaction_History> list = new ArrayList<>();
        String sql = "SELECT * from user_wallet,tbl_recharge_transaction,tbl_user\n"
                + "where  user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                + "AND user_wallet.UserID = tbl_user.UserID\n"
                + "AND STR_TO_DATE(Create_Date,'%d/%m/%Y')between STR_TO_DATE(?,'%m/%d/%Y') and STR_TO_DATE(?,'%m/%d/%Y');\n"
                + ";";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, start);
            st.setString(2, end);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Transaction_History acc = new Transaction_History();
                
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

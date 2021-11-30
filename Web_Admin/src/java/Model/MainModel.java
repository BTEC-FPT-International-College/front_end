package Model;

import Entity.Recharge;
import Model.GetConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author nguyenbamang
 */
public class MainModel {  
    public ArrayList<Recharge> getListRecharge() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeID,\n"
                    + "STR_TO_DATE(tbl_recharge_transaction.Create_Date,'%d/%m/%Y'),\n"
                    + "tbl_recharge_transaction.Create_Hour,\n"
                    + "tbl_recharge_transaction.walletID,\n"
                    + "user_wallet.UserID,\n"
                    + "tbl_recharge_transaction.Bank_Account,\n"
                    + "tbl_recharge_transaction.Bank,\n"
                    + "tbl_recharge_transaction.Amount\n"
                    + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                    + "WHERE user_wallet.walletID = tbl_recharge_transaction.walletID\n"
                    + "AND user_wallet.UserID = tbl_user.UserID\n"
                    + "LIMIT 10;");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
                acc.setRechargeID(rs.getString(1));
                acc.setCreateDate(rs.getString(2));
                acc.setAmount(rs.getInt(8));
                acc.setBank(rs.getString(7));
                acc.setBankAccount(rs.getString(6));
                acc.setWalletID(rs.getString(4));
                acc.setCreateHourl(rs.getString(3));
                acc.setUserID(rs.getString(5));
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

    public ArrayList<Recharge> getRevenuebyMonth() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT COALESCE(sum,0) from(\n"
                    + "(SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=1 )\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=2\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=3\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=4\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=5\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=6\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=7\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=8\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=9\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=10\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=11\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=12\n"
                    + ") as t");
            Recharge acc = null;
            while (rs.next()) {
                acc = new Recharge();
                acc.setAmount(rs.getInt(1));
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

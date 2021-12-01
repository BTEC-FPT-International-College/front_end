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
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=1 \n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE()))\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=2\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=3\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=4\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=5\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=6\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=7\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=8\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=9\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=10\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=11\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(Amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(Create_Date,'%d/%m/%Y'))=12\n"
                    + "and Year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())\n"
                    + ") as t;");
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

    public ArrayList<Recharge> getRevenuebyYear() {
        ArrayList<Recharge> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select sum from (\n"
                    + "(select sum(Amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE()))\n"
                    + "union all\n"
                    + "select sum(Amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())-1\n"
                    + "union all\n"
                    + "select sum(Amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())-2\n"
                    + "union all\n"
                    + "select sum(Amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())-3\n"
                    + "union all\n"
                    + "select sum(Amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(Create_Date,'%d/%m/%Y')) = YEAR(CURDATE())-4\n"
                    + "\n"
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

    public ArrayList<Entity.Main> getInfor() {
        ArrayList<Entity.Main> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select value from (\n"
                    + "/*Count User*/\n"
                    + "(SELECT count(UserID) as 'value' FROM tbl_user\n"
                    + "WHERE RoleID=3)\n"
                    + "union all\n"
                    + "/*Count Pots*/\n"
                    + "Select count(PostID) as 'value' from tbl_post\n"
                    + "union all\n"
                    + "/*Total Value*/\n"
                    + "SELECT sum(Amount) as 'value'  from tbl_recharge_transaction as t\n"
                    + ") as t;");
            Entity.Main acc = null;
            while (rs.next()) {
                acc = new Entity.Main();
                acc.setTotalValue(rs.getInt(1));
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

    public ArrayList<Entity.Main> getTop1Recharge() {
        ArrayList<Entity.Main> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select walletID, sum(Amount) from tbl_recharge_transaction\n"
                    + "Group by walletID\n"
                    + "order by sum(Amount) desc\n"
                    + "limit 1");
            Entity.Main acc = null;
            while (rs.next()) {
                acc = new Entity.Main();
                acc.setWalletID(rs.getString(1));
                acc.setTotalValue(rs.getInt(2));
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
    public ArrayList<Entity.Main> getTop1PostBuy() {
        ArrayList<Entity.Main> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.PostID,tbl_post.UserID,SUM(tbl_transaction_history.Price) as'Total Price'\n"
                    + "FROM tbl_transaction_history,tbl_post\n"
                    + "where tbl_transaction_history.PostID = tbl_post.PostID\n"
                    + "group by tbl_transaction_history.PostID\n"
                    + "order by SUM(tbl_transaction_history.Price) desc\n"
                    + "Limit 1");
            Entity.Main acc = null;
            while (rs.next()) {
                acc = new Entity.Main();
                acc.setWalletID(rs.getString(1));
                acc.setTotalValue(rs.getInt(3));
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

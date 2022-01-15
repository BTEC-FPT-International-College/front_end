package Model;

import Entity.RechargeAdmin;
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
public class MainModelAdmin {

    public ArrayList<RechargeAdmin> getListRechargeAdmin() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT tbl_recharge_transaction.rechargeid,\n"
                    + "STR_TO_DATE(tbl_recharge_transaction.create_date,'%Y/%m/%d'),\n"
                    + "tbl_recharge_transaction.create_hour,\n"
                    + "tbl_recharge_transaction.walletid,\n"
                    + "user_wallet.userid,\n"
                    + "tbl_recharge_transaction.bank_account,\n"
                    + "tbl_recharge_transaction.bank,\n"
                    + "tbl_recharge_transaction.amount\n"
                    + "from user_wallet,tbl_recharge_transaction,tbl_user\n"
                    + "WHERE user_wallet.walletid = tbl_recharge_transaction.walletid\n"
                    + "AND user_wallet.userid = tbl_user.userid\n"
                    + " ORDER BY rechargeid DESC LIMIT 10;");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
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

    public ArrayList<RechargeAdmin> getRevenuebyMonth() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT COALESCE(sum,0) from(\n"
                    + "(SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=1 \n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE()))\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=2\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=3\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=4\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=5\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=6\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=7\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=8\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=9\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=10\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=11\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + "union all\n"
                    + "SELECT  sum(amount) as `sum`\n"
                    + "FROM tbl_recharge_transaction as t\n"
                    + "where MONTH(STR_TO_DATE(create_date,'%Y/%m/%d'))=12\n"
                    + "and Year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())\n"
                    + ") as t;");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
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

    public ArrayList<RechargeAdmin> getRevenuebyYear() {
        ArrayList<RechargeAdmin> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select sum from (\n"
                    + "(select sum(amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE()))\n"
                    + "union all\n"
                    + "select sum(amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())-1\n"
                    + "union all\n"
                    + "select sum(amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())-2\n"
                    + "union all\n"
                    + "select sum(amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())-3\n"
                    + "union all\n"
                    + "select sum(amount) as 'sum'  from tbl_recharge_transaction as t\n"
                    + "where year(STR_TO_DATE(create_date,'%Y/%m/%d')) = YEAR(CURDATE())-4\n"
                    + "\n"
                    + ") as t");
            RechargeAdmin acc = null;
            while (rs.next()) {
                acc = new RechargeAdmin();
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
                    + "(SELECT count(userid) as 'value' FROM tbl_user\n"
                    + "WHERE roleid=3)\n"
                    + "union all\n"
                    + "/*Count Pots*/\n"
                    + "Select count(postid) as 'value' from tbl_post\n"
                    + "union all\n"
                    + "/*Total Value*/\n"
                    + "SELECT sum(amount) as 'value'  from tbl_recharge_transaction as t\n"
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

    public ArrayList<Entity.Main> getTop1RechargeAdmin() {
        ArrayList<Entity.Main> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select walletid, sum(amount) from tbl_recharge_transaction\n"
                    + "Group by walletid\n"
                    + "order by sum(amount) desc\n"
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
            ResultSet rs = stm.executeQuery("SELECT tbl_transaction_history.postid,tbl_post.userid,SUM(tbl_transaction_history.price) as'Total Price'\n"
                    + "FROM tbl_transaction_history,tbl_post\n"
                    + "where tbl_transaction_history.postid = tbl_post.postid\n"
                    + "group by tbl_transaction_history.postid\n"
                    + "order by SUM(tbl_transaction_history.price) desc\n"
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

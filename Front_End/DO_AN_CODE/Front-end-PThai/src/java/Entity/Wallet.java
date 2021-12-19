/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;
import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Wallet {
    private int walletID;
    private int surplus;
    private String rechargeDate;
    private String userID;
    
    public Wallet() {
    }

    public Wallet(int walletID, int surplus, String rechargeDate) {
        this.walletID = walletID;
        this.surplus = surplus;
        this.rechargeDate = rechargeDate;
        this.userID = userID;
    }

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public int getSurplus() {
        return surplus;
    }

    public void setSurplus(int surplus) {
        this.surplus = surplus;
    }

    public String getRechargeDate() {
        return rechargeDate;
    }

    public void setRechargeDate(String rechargeDate) {
        this.rechargeDate = rechargeDate;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }
    
    
}


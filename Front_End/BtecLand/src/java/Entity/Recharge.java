/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Admin
 */
public class Recharge {
    private String rechargeID;
    private String Create_Date;
    private Integer Amount;
    private String Name;
    private String Bank;
    private String Bank_Account;
    private String Content;
    private String walletID;
    private String Create_Hour;
    
    
    public Recharge() {}
    
    public Recharge(String rechargeID, String Create_Date, Integer Amount, String Name, String Bank, String Bank_Account, String Content, String walletID, String Create_Hour) {
        this.rechargeID = rechargeID;
        this.Create_Date = Create_Date;
        this.Amount = Amount;
        this.Name = Name;
        this.Bank = Bank;
        this.Bank_Account = Bank_Account;
        this.Content = Content;
        this.walletID = walletID;
        this.Create_Hour = Create_Hour;
    }

    public String getRechargeID() {
        return rechargeID;
    }

    public void setRechargeID(String rechargeID) {
        this.rechargeID = rechargeID;
    }

    public String getCreate_Date() {
        return Create_Date;
    }

    public void setCreate_Date(String Create_Date) {
        this.Create_Date = Create_Date;
    }

    public Integer getAmount() {
        return Amount;
    }

    public void setAmount(Integer Amount) {
        this.Amount = Amount;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getBank() {
        return Bank;
    }

    public void setBank(String Bank) {
        this.Bank = Bank;
    }

    public String getBank_Account() {
        return Bank_Account;
    }

    public void setBank_Account(String Bank_Account) {
        this.Bank_Account = Bank_Account;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getWalletID() {
        return walletID;
    }

    public void setWalletID(String walletID) {
        this.walletID = walletID;
    }

    public String getCreate_Hour() {
        return Create_Hour;
    }

    public void setCreate_Hour(String Create_Hour) {
        this.Create_Hour = Create_Hour;
    }
    
    
}
 
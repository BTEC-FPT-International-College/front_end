/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Recharge {
    private String RechargeID;
    private String CreateDate;
    private String Name;
    private String BankAccount;
    private String Bank;
    private int Amount;
    private String Content;
    private String WalletID;
    private String UserID;
    private String CreateHourl;
    private int SumRechargeofUser;
    private String FullName;
    public Recharge() {
    }

    public Recharge(String WalletID, String UserID, int SumRechargeofUser, String FullName) {
        this.WalletID = WalletID;
        this.UserID = UserID;
        this.SumRechargeofUser = SumRechargeofUser;
        this.FullName = FullName;
    }
    
    public Recharge(String RechargeID, String CreateDate, String Name, String BankAccount, String Bank, int Amount, String Content, String WalletID, String UserID, String CreateHourl) {
        this.RechargeID = RechargeID;
        this.CreateDate = CreateDate;
        this.Name = Name;
        this.BankAccount = BankAccount;
        this.Bank = Bank;
        this.Amount = Amount;
        this.Content = Content;
        this.WalletID = WalletID;
        this.UserID = UserID;
        this.CreateHourl = CreateHourl;
    }

    
    
    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }
    public String getRechargeID() {
        return RechargeID;
    }

    public void setRechargeID(String RechargeID) {
        this.RechargeID = RechargeID;
    }

    public String getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(String CreateDate) {
        this.CreateDate = CreateDate;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getBankAccount() {
        return BankAccount;
    }

    public void setBankAccount(String BankAccount) {
        this.BankAccount = BankAccount;
    }

    public int getAmount() {
        return Amount;
    }

    public void setAmount(int Amount) {
        this.Amount = Amount;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getWalletID() {
        return WalletID;
    }

    public void setWalletID(String WalletID) {
        this.WalletID = WalletID;
    }

    public String getBank() {
        return Bank;
    }

    public void setBank(String Bank) {
        this.Bank = Bank;
    }

    public String getCreateHourl() {
        return CreateHourl;
    }

    public void setCreateHourl(String CreateHourl) {
        this.CreateHourl = CreateHourl;
    }

    public int getSumRechargeofUser() {
        return SumRechargeofUser;
    }

    public void setSumRechargeofUser(int SumRechargeofUser) {
        this.SumRechargeofUser = SumRechargeofUser;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }
    
}

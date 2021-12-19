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
    private String createDate;
    private int amount;
    private String name;
    private String bank;
    private String bankAccount;
    private String content;
    private int walletID;
    private String createHour;

    public Recharge(String rechargeID, String createDate, int amount, String name, String bank, String bankAccount, String content, int walletID, String createHour) {
        this.rechargeID = rechargeID;
        this.createDate = createDate;
        this.amount = amount;
        this.name = name;
        this.bank = bank;
        this.bankAccount = bankAccount;
        this.content = content;
        this.walletID = walletID;
        this.createHour = createHour;
    }
    
    public Recharge() {}

    public String getRechargeID() {
        return rechargeID;
    }

    public void setRechargeID(String rechargeID) {
        this.rechargeID = rechargeID;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public String getCreateHour() {
        return createHour;
    }

    public void setCreateHour(String createHour) {
        this.createHour = createHour;
    }

    
    
}
 
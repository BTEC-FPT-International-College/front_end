/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Transaction_History {
    private String PostID;
    private String WalletID;
    private double Price;
    private String CreateDate;

    public Transaction_History() {
    }

    public Transaction_History(String PostID, String WalletID, double Price, String CreateDate) {
        this.PostID = PostID;
        this.WalletID = WalletID;
        this.Price = Price;
        this.CreateDate = CreateDate;
    }

    public String getPostID() {
        return PostID;
    }

    public void setPostID(String PostID) {
        this.PostID = PostID;
    }

    public String getWalletID() {
        return WalletID;
    }

    public void setWalletID(String WalletID) {
        this.WalletID = WalletID;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public String getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(String CreateDate) {
        this.CreateDate = CreateDate;
    }
    
}

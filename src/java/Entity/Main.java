/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Main {
    private String Date;
    private int TotalRevenue;
    private int TotalPost;
    private int TotalValue;
    private int TopPost;
    private String WalletID;
    public Main() {
    }

    public Main(String Date, int TotalRevenue, int TotalPost, int TotalValue, int TopPost, String WalletID) {
        this.Date = Date;
        this.TotalRevenue = TotalRevenue;
        this.TotalPost = TotalPost;
        this.TotalValue = TotalValue;
        this.TopPost = TopPost;
        this.WalletID = WalletID;
    }

    public String getWalletID() {
        return WalletID;
    }

    public void setWalletID(String WalletID) {
        this.WalletID = WalletID;
    }
    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public int getTotalRevenue() {
        return TotalRevenue;
    }

    public void setTotalRevenue(int TotalRevenue) {
        this.TotalRevenue = TotalRevenue;
    }

    public int getTotalPost() {
        return TotalPost;
    }

    public void setTotalPost(int TotalPost) {
        this.TotalPost = TotalPost;
    }

    public int getTotalValue() {
        return TotalValue;
    }

    public void setTotalValue(int TotalValue) {
        this.TotalValue = TotalValue;
    }

    public int getTopPost() {
        return TopPost;
    }

    public void setTopPost(int TopPost) {
        this.TopPost = TopPost;
    }
    
    
    
}

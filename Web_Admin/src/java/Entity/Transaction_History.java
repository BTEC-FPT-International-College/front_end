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
    private int TransactionID;
    private String PostID;
    private String WalletID;
    private int Price;
    private String CreateDate;
    private String CreateHour;
    private int Packet;
    public Transaction_History() {
    }

    public Transaction_History(int TransactionID, String PostID, String WalletID, int Price, String CreateDate, String CreateHour, int Packet) {
        this.TransactionID = TransactionID;
        this.PostID = PostID;
        this.WalletID = WalletID;
        this.Price = Price;
        this.CreateDate = CreateDate;
        this.CreateHour = CreateHour;
        this.Packet = Packet;
    }

    public int getPacket() {
        return Packet;
    }

    public void setPacket(int Packet) {
        this.Packet = Packet;
    }
    
    

    public int getTransactionID() {
        return TransactionID;
    }

    public void setTransactionID(int TransactionID) {
        this.TransactionID = TransactionID;
    }
    
    

    public String getCreateHour() {
        return CreateHour;
    }

    public void setCreateHour(String CreateHour) {
        this.CreateHour = CreateHour;
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

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public String getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(String CreateDate) {
        this.CreateDate = CreateDate;
    }
    
}

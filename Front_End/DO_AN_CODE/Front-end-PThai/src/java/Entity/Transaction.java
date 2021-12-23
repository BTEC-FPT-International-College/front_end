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
public class Transaction {
   private int postID;
    private int walletID;
    private String content;
    private int price;
    private String createDay;
    private String createHour;
    private int transactionID;
    private int packet;

    public Transaction() {
    }

    public Transaction(int postID, int walletID, String content, int price, String createDay, String createHour, int transactionID, int packet) {
        this.postID = postID;
        this.walletID = walletID;
        this.content = content;
        this.price = price;
        this.createDay = createDay;
        this.createHour = createHour;
        this.transactionID = transactionID;
        this.packet = packet;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCreateDay() {
        return createDay;
    }

    public void setCreateDay(String createDay) {
        this.createDay = createDay;
    }

    public String getCreateHour() {
        return createHour;
    }

    public void setCreateHour(String createHour) {
        this.createHour = createHour;
    }

    public int getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(int transactionID) {
        this.transactionID = transactionID;
    }

    public int getPacket() {
        return packet;
    }

    public void setPacket(int packet) {
        this.packet = packet;
    }

    

    
    
}
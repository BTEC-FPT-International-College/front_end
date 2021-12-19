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
    private String postID;
    private String walletID;
    private double price;
    private String createDay;
    private String createHour;
    private String transactionID;
    private int packet;
    private String userID;

    public Transaction() {
    }

    public Transaction(String postID, String walletID, double price, String createDay, String createHour, String transactionID, int packet, String userID) {
        this.postID = postID;
        this.walletID = walletID;
        this.price = price;
        this.createDay = createDay;
        this.createHour = createHour;
        this.transactionID = transactionID;
        this.packet = packet;
        this.userID = userID;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getWalletID() {
        return walletID;
    }

    public void setWalletID(String walletID) {
        this.walletID = walletID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
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

    public String getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(String transactionID) {
        this.transactionID = transactionID;
    }

    public int getPacket() {
        return packet;
    }

    public void setPacket(int packet) {
        this.packet = packet;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    
    
}
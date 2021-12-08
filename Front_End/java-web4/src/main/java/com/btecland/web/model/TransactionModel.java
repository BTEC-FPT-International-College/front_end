package com.btecland.web.model;

public class TransactionModel {
	private String postID;
    private String walletID;
    private double price;
    private String createDay;

    public TransactionModel() {
    }

    public TransactionModel(String postID, String walletID, double price, String createDay) {
        this.postID = postID;
        this.walletID = walletID;
        this.price = price;
        this.createDay = createDay;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public void setWalletID(String walletID) {
        this.walletID = walletID;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setCreateDay(String createDay) {
        this.createDay = createDay;
    }

    public String getPostID() {
        return postID;
    }

    public String getWalletID() {
        return walletID;
    }

    public double getPrice() {
        return price;
    }

    public String getCreateDay() {
        return createDay;
    }
    
    
}

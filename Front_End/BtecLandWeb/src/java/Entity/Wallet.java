/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Wallet {
    private String WalletID;
    private int Surplus;
    private String UserID;

    public Wallet() {
    }

    public Wallet(String WalletID, int Surplus, String UserID) {
        this.WalletID = WalletID;
        this.Surplus = Surplus;
        this.UserID = UserID;
    }

    public String getWalletID() {
        return WalletID;
    }

    public void setWalletID(String WalletID) {
        this.WalletID = WalletID;
    }

    public int getSurplus() {
        return Surplus;
    }

    public void setSurplus(int Surplus) {
        this.Surplus = Surplus;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }
    
}

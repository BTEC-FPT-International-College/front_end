/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class ViewTotalPurchases {
    private String UserID;
    private int TotalPurchases;

    public ViewTotalPurchases() {
    }
    
    public ViewTotalPurchases(String UserID, int TotalPurchases) {
        this.UserID = UserID;
        this.TotalPurchases = TotalPurchases;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public int getTotalPurchases() {
        return TotalPurchases;
    }

    public void setTotalPurchases(int TotalPurchases) {
        this.TotalPurchases = TotalPurchases;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class User_Cate {
    private String UserID;
    private String CategoryID;
    private int ReadPostAmount;
    private int DeletePostAmount;
    private String TotalHourActive;

    public User_Cate() {
    }

    public User_Cate(String UserID, String CategoryID, int ReadPostAmount, int DeletePostAmount, String TotalHourActive) {
        this.UserID = UserID;
        this.CategoryID = CategoryID;
        this.ReadPostAmount = ReadPostAmount;
        this.DeletePostAmount = DeletePostAmount;
        this.TotalHourActive = TotalHourActive;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public String getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(String CategoryID) {
        this.CategoryID = CategoryID;
    }

    public int getReadPostAmount() {
        return ReadPostAmount;
    }

    public void setReadPostAmount(int ReadPostAmount) {
        this.ReadPostAmount = ReadPostAmount;
    }

    public int getDeletePostAmount() {
        return DeletePostAmount;
    }

    public void setDeletePostAmount(int DeletePostAmount) {
        this.DeletePostAmount = DeletePostAmount;
    }

    public String getTotalHourActive() {
        return TotalHourActive;
    }

    public void setTotalHourActive(String TotalHourActive) {
        this.TotalHourActive = TotalHourActive;
    }
    
}

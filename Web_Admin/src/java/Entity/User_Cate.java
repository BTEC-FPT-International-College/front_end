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
    private String ReadPostAmount;
    private String DeletePostAmount;
    private String TotalHourActive;

    public User_Cate() {
    }

    public User_Cate(String UserID, String CategoryID, String ReadPostAmount, String DeletePostAmount, String TotalHourActive) {
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

    public String getReadPostAmount() {
        return ReadPostAmount;
    }

    public void setReadPostAmount(String ReadPostAmount) {
        this.ReadPostAmount = ReadPostAmount;
    }

    public String getDeletePostAmount() {
        return DeletePostAmount;
    }

    public void setDeletePostAmount(String DeletePostAmount) {
        this.DeletePostAmount = DeletePostAmount;
    }

    public String getTotalHourActive() {
        return TotalHourActive;
    }

    public void setTotalHourActive(String TotalHourActive) {
        this.TotalHourActive = TotalHourActive;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class ViewTotalPost {
   private String UserID;
   private int TotalPost;

    public ViewTotalPost() {
    }

    public ViewTotalPost(String UserID, int TotalPost) {
        this.UserID = UserID;
        this.TotalPost = TotalPost;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public int getTotalPost() {
        return TotalPost;
    }

    public void setTotalPost(int TotalPost) {
        this.TotalPost = TotalPost;
    }
   
}

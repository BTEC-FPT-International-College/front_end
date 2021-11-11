/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Comment {
    private int CommentID;
    private String Name;
    private String Email;
    private String Phone;
    private String Content;
    private String Create_Day;
    private String Update_Day;
    private String PostID;

    public Comment() {
    }

    public Comment(int CommentID, String Name, String Email, String Phone, String Content, String Create_Day, String Update_Day, String PostID) {
        this.CommentID = CommentID;
        this.Name = Name;
        this.Email = Email;
        this.Phone = Phone;
        this.Content = Content;
        this.Create_Day = Create_Day;
        this.Update_Day = Update_Day;
        this.PostID = PostID;
    }

    public int getCommentID() {
        return CommentID;
    }

    public void setCommentID(int CommentID) {
        this.CommentID = CommentID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getCreate_Day() {
        return Create_Day;
    }

    public void setCreate_Day(String Create_Day) {
        this.Create_Day = Create_Day;
    }

    public String getUpdate_Day() {
        return Update_Day;
    }

    public void setUpdate_Day(String Update_Day) {
        this.Update_Day = Update_Day;
    }

    public String getPostID() {
        return PostID;
    }

    public void setPostID(String PostID) {
        this.PostID = PostID;
    }
    
    
}

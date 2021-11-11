/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Post {
    private String PostID;
    private String Title;
    private String avartar;
    private double longs;
    private double width;
    private double price;
    private String Description;
    private String phone;
    private String Email;
    private String UserID;
    private int Total_View;
    private String Create_Date;
    private String Update_Date;
    private int PostType;
    private String status;
    private String ReadUnread;
    private String Location;
    private String Category;
    private int Priod;
    private String EndDate;

    public Post() {
    }
    public double Area(){
        return this.longs * this.width;
    }
    public Post(String PostID, String Title, String avartar, double longs, double width, double price, String Description, String phone, String Email, String UserID, int Total_View, String Create_Date, String Update_Date, int PostType, String status, String ReadUnread, String Location, String Category, int Priod, String EndDate) {
        this.PostID = PostID;
        this.Title = Title;
        this.avartar = avartar;
        this.longs = longs;
        this.width = width;
        this.price = price;
        this.Description = Description;
        this.phone = phone;
        this.Email = Email;
        this.UserID = UserID;
        this.Total_View = Total_View;
        this.Create_Date = Create_Date;
        this.Update_Date = Update_Date;
        this.PostType = PostType;
        this.status = status;
        this.ReadUnread = ReadUnread;
        this.Location = Location;
        this.Category = Category;
        this.Priod = Priod;
        this.EndDate = EndDate;
    }

    public String getPostID() {
        return PostID;
    }

    public void setPostID(String PostID) {
        this.PostID = PostID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getAvartar() {
        return avartar;
    }

    public void setAvartar(String avartar) {
        this.avartar = avartar;
    }

    public double getLongs() {
        return longs;
    }

    public void setLongs(double longs) {
        this.longs = longs;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public int getTotal_View() {
        return Total_View;
    }

    public void setTotal_View(int Total_View) {
        this.Total_View = Total_View;
    }

    public String getCreate_Date() {
        return Create_Date;
    }

    public void setCreate_Date(String Create_Date) {
        this.Create_Date = Create_Date;
    }

    public String getUpdate_Date() {
        return Update_Date;
    }

    public void setUpdate_Date(String Update_Date) {
        this.Update_Date = Update_Date;
    }

    public int getPostType() {
        return PostType;
    }

    public void setPostType(int PostType) {
        this.PostType = PostType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReadUnread() {
        return ReadUnread;
    }

    public void setReadUnread(String ReadUnread) {
        this.ReadUnread = ReadUnread;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public int getPriod() {
        return Priod;
    }

    public void setPriod(int Priod) {
        this.Priod = Priod;
    }

    public String getEndDate() {
        return EndDate;
    }

    public void setEndDate(String EndDate) {
        this.EndDate = EndDate;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class PostAdmin {
    private String PostID;
    private String Title;
    private String avartar;
    private double price;
    private double area;
    private String Description;
    private String phone;
    private String Email;
    private String UserID;
    private int Total_View;
    private String Create_Date;
    private String Create_Hour;
    private String Update_Date;
    private int PostType;
    private String status;
    private int ReadUnread;
    private String Location;
    private String Category;
    private int Priod;
    private String EndDate;
    private String Sale_rent;

    public PostAdmin() {
    }

    public PostAdmin(String PostID, String Title, String avartar, double price, double area, String Description, String phone, String Email, String UserID, int Total_View, String Create_Date, String Create_Hour, String Update_Date, int PostType, String status, int ReadUnread, String Location, String Category, int Priod, String EndDate, String Sale_rent) {
        this.PostID = PostID;
        this.Title = Title;
        this.avartar = avartar;
        this.price = price;
        this.area = area;
        this.Description = Description;
        this.phone = phone;
        this.Email = Email;
        this.UserID = UserID;
        this.Total_View = Total_View;
        this.Create_Date = Create_Date;
        this.Create_Hour = Create_Hour;
        this.Update_Date = Update_Date;
        this.PostType = PostType;
        this.status = status;
        this.ReadUnread = ReadUnread;
        this.Location = Location;
        this.Category = Category;
        this.Priod = Priod;
        this.EndDate = EndDate;
        this.Sale_rent = Sale_rent;
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
    public String getSale_rent() {
        return Sale_rent;
    }

    public void setSale_rent(String Sale_rent) {
        this.Sale_rent = Sale_rent;
    }

    public String getAvartar() {
        return avartar;
    }

    public void setAvartar(String avartar) {
        this.avartar = avartar;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getCreate_Hour() {
        return Create_Hour;
    }

    public void setCreate_Hour(String Create_Hour) {
        this.Create_Hour = Create_Hour;
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

    public int getReadUnread() {
        return ReadUnread;
    }

    public void setReadUnread(int ReadUnread) {
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

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
public class Post {
    private String postId;
    private String title;
    private String avatar;
    private int area;
    private int price;
    private String saleRent;
    private String description;
    private String phone;
    private String email;
    private int totalView;
    private String userId;
    private String createDay;
    private int postType;
    private String status;
    private int readUnread;
    private String updateDay;
    private String location;
    private String categoryId;
    private int priod;
    private String end_day;
    private int room;
    private int bath;
    
    public Post() {}

    public Post(String postId, String title, String avatar, int area, int price, String saleRent, String description, String phone, String email, int totalView, String userId, String createDay, int postType, String status, int readUnread, String updateDay, String location, String categoryId, int priod, String end_day, int room, int bath) {
        this.postId = postId;
        this.title = title;
        this.avatar = avatar;
        this.area = area;
        this.price = price;
        this.saleRent = saleRent;
        this.description = description;
        this.phone = phone;
        this.email = email;
        this.totalView = totalView;
        this.userId = userId;
        this.createDay = createDay;
        this.postType = postType;
        this.status = status;
        this.readUnread = readUnread;
        this.updateDay = updateDay;
        this.location = location;
        this.categoryId = categoryId;
        this.priod = priod;
        this.end_day = end_day;
        this.room = room;
        this.bath = bath;
    }

    public Post(String title) {
        this.title = title;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSaleRent() {
        return saleRent;
    }

    public void setSaleRent(String saleRent) {
        this.saleRent = saleRent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTotalView() {
        return totalView;
    }

    public void setTotalView(int totalView) {
        this.totalView = totalView;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCreateDay() {
        return createDay;
    }

    public void setCreateDay(String createDay) {
        this.createDay = createDay;
    }

    public int getPostType() {
        return postType;
    }

    public void setPostType(int postType) {
        this.postType = postType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getReadUnread() {
        return readUnread;
    }

    public void setReadUnread(int readUnread) {
        this.readUnread = readUnread;
    }

    public String getUpdateDay() {
        return updateDay;
    }

    public void setUpdateDay(String updateDay) {
        this.updateDay = updateDay;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public int getPriod() {
        return priod;
    }

    public void setPriod(int priod) {
        this.priod = priod;
    }

    public String getEnd_day() {
        return end_day;
    }

    public void setEnd_day(String endDay) {
        this.end_day = endDay;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public int getBath() {
        return bath;
    }

    public void setBath(int bath) {
        this.bath = bath;
    }
    
    
}
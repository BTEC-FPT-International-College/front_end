package com.btecland.web.model;

public class CommentModel {
    private int CommentID;
    private String Name;
    private String Email;
    private String Phone;
    private String Content;
    private String Create_Day;
    private String Update_Day;
    private String PostID;
	public int getCommentID() {
		return CommentID;
	}
	public void setCommentID(int commentID) {
		CommentID = commentID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getCreate_Day() {
		return Create_Day;
	}
	public void setCreate_Day(String create_Day) {
		Create_Day = create_Day;
	}
	public String getUpdate_Day() {
		return Update_Day;
	}
	public void setUpdate_Day(String update_Day) {
		Update_Day = update_Day;
	}
	public String getPostID() {
		return PostID;
	}
	public void setPostID(String postID) {
		PostID = postID;
	}

   
}

package com.btecland.web.model;

public class CategoryModel {
	private String categoryid;
	private String name;
    private String code;
    private String  image;
    private String description;
    private String createddate;
    private String updateddate;
    
    public String getCategoryid() {
  		return categoryid;
  	}
  	public void setCategoryid(String categoryid) {
  		this.categoryid = categoryid;
  	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	public String getUpdateddate() {
		return updateddate;
	}
	public void setUpdateddate(String updateddate) {
		this.updateddate = updateddate;
	}
  
    
	
}

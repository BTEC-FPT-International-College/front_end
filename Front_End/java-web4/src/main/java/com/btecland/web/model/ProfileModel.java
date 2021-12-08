package com.btecland.web.model;

public class ProfileModel {
    private String userid;
    private String fullname;
    private String phone;
    private String email;
    private String address;
    private String dateofbirth;
    private Integer rewardpoint;
    private String gender;
    private String roleid;
    
    public ProfileModel() {}

 

	public ProfileModel(String userid, String fullname, String phone, String email, String address, String dateofbirth,
			Integer rewardpoint, String gender, String roleid) {
		super();
		this.userid = userid;
		this.fullname = fullname;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.dateofbirth = dateofbirth;
		this.rewardpoint = rewardpoint;
		this.gender = gender;
		this.roleid = roleid;
	}



	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public Integer getRewardpoint() {
		return rewardpoint;
	}

	public void setRewardpoint(Integer rewardpoint) {
		this.rewardpoint = rewardpoint;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
   
    
    
    
}

package com.btecland.web.model;

public class Profile {
	private String userID;
    private String fullName;
    private String username;
    private String phone;
    private String email;
    private String address;
    private String dateOfBirth;
    private String password;
    private int rewardPoint;
    private String gender;
    private String createDay;
    private String updateDay;
    private String roleID;
    private int status;
    
    public Profile() {}

    public Profile(String userID, String fullName,String username, String phone, String email, String address, String dateOfBirth, String password, int rewardPoint, String gender, String createDay, String updateDay, String roleID, int status) {
        this.userID = userID;
        this.fullName = fullName;
        this.username = username;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.rewardPoint = rewardPoint;
        this.gender = gender;
        this.createDay = createDay;
        this.updateDay = updateDay;
        this.roleID = roleID;
        this.status = status;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }
    

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    

    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRewardPoint() {
        return rewardPoint;
    }

    public void setRewardPoint(int rewardPoint) {
        this.rewardPoint = rewardPoint;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCreateDay() {
        return createDay;
    }

    public void setCreateDay(String createDay) {
        this.createDay = createDay;
    }

    public String getUpdateDay() {
        return updateDay;
    }

    public void setUpdateDay(String updateDay) {
        this.updateDay = updateDay;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}

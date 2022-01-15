/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class UserAdmin {
    private String UserID;
    private String FullName;
    private String Phone;
    private String Email;
    private String Address;
    private String Date_of_Birth;
    private String Password;
    private int Reward_point;
    private String Gender;
    private String CreateDate;
    private String UpdateDate;
    private int RoleId;
    private int Status;
    public UserAdmin() {
    }
    public UserAdmin(String UserID, String FullName, String Phone, String Email, String Address, String Date_of_Birth, String Password, int Reward_point, String Gender, String CreateDate, String UpdateDate, int RoleId, int Status) {
        this.UserID = UserID;
        this.FullName = FullName;
        this.Phone = Phone;
        this.Email = Email;
        this.Address = Address;
        this.Date_of_Birth = Date_of_Birth;
        this.Password = Password;
        this.Reward_point = Reward_point;
        this.Gender = Gender;
        this.CreateDate = CreateDate;
        this.UpdateDate = UpdateDate;
        this.RoleId = RoleId;
        this.Status = Status;
    }
    
    public UserAdmin(String UserID, String FullName, String Phone, String Email, String Address, String Date_of_Birth, String Password, int Reward_point, String Gender, String CreateDate, String UpdateDate, int RoleId) {
        this.UserID = UserID;
        this.FullName = FullName;
        this.Phone = Phone;
        this.Email = Email;
        this.Address = Address;
        this.Date_of_Birth = Date_of_Birth;
        this.Password = Password;
        this.Reward_point = Reward_point;
        this.Gender = Gender;
        this.CreateDate = CreateDate;
        this.UpdateDate = UpdateDate;
        this.RoleId = RoleId;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getDate_of_Birth() {
        return Date_of_Birth;
    }

    public void setDate_of_Birth(String Date_of_Birth) {
        this.Date_of_Birth = Date_of_Birth;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public int getReward_point() {
        return Reward_point;
    }

    public void setReward_point(int Reward_point) {
        this.Reward_point = Reward_point;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(String CreateDate) {
        this.CreateDate = CreateDate;
    }

    public String getUpdateDate() {
        return UpdateDate;
    }

    public void setUpdateDate(String UpdateDate) {
        this.UpdateDate = UpdateDate;
    }

    public int getRoleId() {
        return RoleId;
    }

    public void setRoleId(int RoleId) {
        this.RoleId = RoleId;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }
    
}

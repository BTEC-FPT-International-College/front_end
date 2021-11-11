/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Role {
    private int RoleID;
    private String RoleDes;
    private String RoleName;

    public Role() {
    }

    public Role(int RoleID, String RoleDes, String RoleName) {
        this.RoleID = RoleID;
        this.RoleDes = RoleDes;
        this.RoleName = RoleName;
    }

    public int getRoleID() {
        return RoleID;
    }

    public void setRoleID(int RoleID) {
        this.RoleID = RoleID;
    }

    public String getRoleDes() {
        return RoleDes;
    }

    public void setRoleDes(String RoleDes) {
        this.RoleDes = RoleDes;
    }

    public String getRoleName() {
        return RoleName;
    }

    public void setRoleName(String RoleName) {
        this.RoleName = RoleName;
    }
    
}

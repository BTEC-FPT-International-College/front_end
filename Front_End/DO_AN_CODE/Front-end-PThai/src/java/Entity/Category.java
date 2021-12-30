/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Category {
    private String CateID;
    private String CateName;
    private String CateImage;
    private String CateDes;
    private String CateCreateDate;
    private String CateUpdateDate;
    public Category() {
    }
    public Category(String CateID, String CateName, String CateImage, String CateDes, String CateCreateDate, String CateUpdateDate) {
        this.CateID = CateID;
        this.CateName = CateName;
        this.CateImage = CateImage;
        this.CateDes = CateDes;
        this.CateCreateDate = CateCreateDate;
        this.CateUpdateDate = CateUpdateDate;
    }

    public String getCateID() {
        return CateID;
    }

    public void setCateID(String CateID) {
        this.CateID = CateID;
    }

    public String getCateName() {
        return CateName;
    }

    public void setCateName(String CateName) {
        this.CateName = CateName;
    }

    public String getCateImage() {
        return CateImage;
    }

    public void setCateImage(String CateImage) {
        this.CateImage = CateImage;
    }

    public String getCateDes() {
        return CateDes;
    }

    public void setCateDes(String CateDes) {
        this.CateDes = CateDes;
    }

    public String getCateCreateDate() {
        return CateCreateDate;
    }

    public void setCateCreateDate(String CateCreateDate) {
        this.CateCreateDate = CateCreateDate;
    }

    public String getCateUpdateDate() {
        return CateUpdateDate;
    }

    public void setCateUpdateDate(String CateUpdateDate) {
        this.CateUpdateDate = CateUpdateDate;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Post_Image {
    private String ImageID;
    private String Url;
    private String Description;
    private String PostID;

    public Post_Image() {
    }

    public Post_Image(String ImageID, String Url, String Description, String PostID) {
        this.ImageID = ImageID;
        this.Url = Url;
        this.Description = Description;
        this.PostID = PostID;
    }

    public String getImageID() {
        return ImageID;
    }

    public void setImageID(String ImageID) {
        this.ImageID = ImageID;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String Url) {
        this.Url = Url;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getPostID() {
        return PostID;
    }

    public void setPostID(String PostID) {
        this.PostID = PostID;
    }
    
}

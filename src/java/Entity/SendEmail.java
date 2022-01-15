/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author MarkTran
 */
public class SendEmail {
    private String Title;
    private String Content;
    private String ToMail;

    public SendEmail(String Title, String Content, String ToMail) {
        this.Title = Title;
        this.Content = Content;
        this.ToMail = ToMail;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getToMail() {
        return ToMail;
    }

    public void setToMail(String ToMail) {
        this.ToMail = ToMail;
    }
    
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author MarkTran
 */
public class SendMail {
   public boolean sendEmail(String title, String content, String toMail){
        
    try {
        
        Properties mailServerProperties;
        Session getMailSession;
        MimeMessage mailMessage;
        
        // Step1: setup Mail Server
        mailServerProperties = System.getProperties();
        mailServerProperties.put("mail.smtp.port", "587");
        mailServerProperties.put("mail.smtp.auth", "true");
        mailServerProperties.put("mail.smtp.starttls.enable", "true");
        
        // Step2: get Mail Session
        getMailSession = Session.getDefaultInstance(mailServerProperties, null);
        mailMessage = new MimeMessage(getMailSession);
        
        try {
            mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toMail)); //to email
            // Bạn có thể chọn CC, BCC
//    generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("cc@gmail.com")); //Địa chỉ cc gmail
        } catch (MessagingException ex) {
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        mailMessage.setSubject(title);
        String emailBody = content;
        mailMessage.setContent(emailBody, "text/html");
        
        // Step3: Send mail
        Transport transport = getMailSession.getTransport("smtp");
        
        // Thay your_gmail thành gmail của bạn, thay your_password thành mật khẩu gmail của bạn
        transport.connect("smtp.gmail.com", "testnodemailmang@gmail.com", "anhmang123");
        transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
        transport.close();
        
        
        return true;
    } catch (MessagingException ex) {
        Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
    }
       return false;
   }
}

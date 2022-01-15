/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entity.Post;
import dao.dao;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author Admin
 */
public class Main {
    public static void main(String[] args) throws MessagingException  {
       MainModelAdmin sen = new MainModelAdmin();
        System.out.println(sen.getListRechargeAdmin().size());
        
  }
   
    
    

}


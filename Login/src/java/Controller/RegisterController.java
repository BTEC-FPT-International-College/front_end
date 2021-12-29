/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Entity.User;
import Model.checkregister;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author A
 */
public class RegisterController extends HttpServlet {
    
    private checkregister Checkregister;

    public void init() {
       Checkregister = new checkregister();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String FullName = request.getParameter("fullname");
        String Email = request.getParameter("email");
        String Phone = request.getParameter("phone");
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");

        User user = new User();
        user.setFullName(FullName);
        user.setEmail(Email);
        user.setPhone(Phone);
        user.setUsername(Username);
        user.setPassword(Password);

        try {
           Checkregister.registerUser(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("userdetail.jsp");
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.PostAdmin;
import Entity.Profile;
import Model.ProfileModel;
import Model.SendMail;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nguyenbamang
 */
@WebServlet(name = "ProfileController", urlPatterns = {"/ProfileController"})
public class ProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String act = request.getParameter("ac");
        if (act.equals("view")) {
            String op = request.getParameter("get");
            ProfileModel am = new ProfileModel();
            ArrayList<Profile> list = am.getListProfile(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        
        if (act.equals("update")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Profile pro = json.fromJson(op, Profile.class);
            ProfileModel am = new ProfileModel();
            boolean a = am.updateProfile(pro.getFullName(), pro.getPhone(), pro.getAddress(), pro.getDateOfBirth(), pro.getGender(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
        }
        if (act.equals("updaterw")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Profile pro = json.fromJson(op, Profile.class);
            ProfileModel am = new ProfileModel();
            boolean a = am.updateProfileRewardPoint(pro.getRewardPoint(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
        }
        if (act.equals("updatepass")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Profile pro = json.fromJson(op, Profile.class);
            ProfileModel am = new ProfileModel();
            boolean a = am.updatePass(pro.getPassword(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
        }

        if (act.equals("add")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Profile re = json.fromJson(op, Profile.class);
            ProfileModel am = new ProfileModel();
            int rs = 0;
            boolean checkMail = am.checkEmail(re.getEmail());
            if(!checkMail){
                boolean a = am.addAccount(re.getFullName(), re.getEmail(), re.getPhone(), re.getPassword());
                if(a){
                    Profile pr = new Profile();
                   pr = am.getEmail(re.getEmail(), re.getPassword());
                   if(am.addUserToWallet(pr.getUserID())){
                       rs = 10;
                       
                
                    SendMail sen = new SendMail();
                    String toMail = re.getEmail();
                    sen.sendEmail("Welcome to BTECLAND", "Thank you for coming to BTEC LAND. Let's search real estate or post on real estate with BTECLAND. Have a good day.", toMail);
                      
                   }else{
                       rs = 2;
                   }
                }else{
                    rs = 1;
                }
            }else{
                rs = 3;
            }
            String listPro = json.toJson(rs);
            response.setContentType("text/html");
            response.getWriter().write(listPro);
           
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Wallet;
import Model.WalletModel;
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
 * @author Admin
 */
@WebServlet(name = "WalletController", urlPatterns = {"/WalletController"})
public class WalletController extends HttpServlet {

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
            WalletModel am = new WalletModel();
            ArrayList<Wallet> list = am.getListWalletByUserId(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("update")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Wallet pro = json.fromJson(op, Wallet.class);
            WalletModel am = new WalletModel();
            boolean a = am.updateProfile(pro.getSurplus(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
        }
        if (act.equals("minus")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Wallet pro = json.fromJson(op, Wallet.class);
            WalletModel am = new WalletModel();
            boolean a = am.minusCoin(pro.getSurplus(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
        }
        if (act.equals("plus")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Wallet pro = json.fromJson(op, Wallet.class);
            WalletModel am = new WalletModel();
            boolean a = am.plusCoin(pro.getSurplus(), pro.getUserID());
            String listProfile = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listProfile);
           
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

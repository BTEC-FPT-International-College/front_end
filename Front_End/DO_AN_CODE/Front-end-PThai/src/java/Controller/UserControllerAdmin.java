/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.User;
import Entity.UserAdmin;
import Entity.ViewTotalPost;
import Entity.ViewTotalPurchases;
import Entity.ViewTotalRecharge;
import Entity.Wallet;
import Entity.WalletAdmin;
import Model.UserModelAdmin;
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
 * @author MarkTran
 */
@WebServlet(name = "UserControllerAdmin", urlPatterns = {"/UserControllerAdmin"})
public class UserControllerAdmin extends HttpServlet {

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
            UserModelAdmin am = new UserModelAdmin();
            ArrayList<UserAdmin> list = am.getListUser();
            request.setAttribute("listU", list);
            request.getRequestDispatcher("Admin/pages/user.jsp").forward(request, response);
        }
        if (act.equals("del")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            Boolean list = am.deleteUser(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewPur")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            ViewTotalPurchases list = am.viewTotalP(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewWallet")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            WalletAdmin list = am.viewWallet(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTotalPost")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            ViewTotalPost list = am.viewTotalPost(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTotalRecharge")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            ViewTotalRecharge list = am.viewTotalRecharge(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewUser")) {
            String op = request.getParameter("get");
            UserModelAdmin am = new UserModelAdmin();
            UserAdmin list = am.getUser(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("updateStatus")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            UserAdmin u = json.fromJson(op, UserAdmin.class);
            UserModelAdmin am = new UserModelAdmin();
            boolean a = am.updateStatus(u.getUserID(), u.getStatus());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
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

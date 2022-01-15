        /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Transaction;
import Entity.Post;
import Model.TransactionModel;
//import Entity.Profile;
//import Model.ProfileModel;
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
@WebServlet(name = "TransactionController", urlPatterns = {"/TransactionController"})
public class TransactionController extends HttpServlet {

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
        if (act.equals("view2")) {
            String op = request.getParameter("getpr");
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction> list = am.getListTransactionByUser(op);
            Gson json = new Gson();
            String listTransaction = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTransaction);
        }
        if (act.equals("view3")) {
            String op = request.getParameter("getpr");
            TransactionModel am = new TransactionModel();
            ArrayList<Post> list = am.getListTransactionByPost(op);
            Gson json = new Gson();
            String listTransaction = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTransaction);
        }
        if (act.equals("add")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Transaction tran = json.fromJson(op, Transaction.class);
            TransactionModel am = new TransactionModel();
            boolean a = am.addTransaction(tran.getPostID(), tran.getWalletID(), tran.getContent(), tran.getPrice(), tran.getCreateDay(), tran.getCreateHour(), tran.getPacket());
            String listTran = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTran);
           
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
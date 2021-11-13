/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Recharge;
import Entity.Search_Recharge;
import Entity.Transaction_History;
import Model.RechargeModel;
import Model.TransactionModel;
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
        if (act.equals("view")) {
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> list = am.getListTransaction();
            request.setAttribute("listTran", list);
            request.getRequestDispatcher("pages/tran_post.jsp").forward(request, response);
        }
        if (act.equals("viewTByWallet")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.getListByWallet(op);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTByPost")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.getListByPost(op);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewT")) {
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> list = am.getListTransaction();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDate(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
            if (act.equals("searchbyWallet")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDatebyWallet(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
            if (act.equals("searchbyPost")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDatebyPost(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search1")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDate2(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search1byWallet")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDate2byWallet(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search1byPost")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> a = am.searchDate2byPost(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTop3")) {
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> list = am.top3UserBuy();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTopPacket")) {
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> list = am.topPacket();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTop1PostBuy")) {
            TransactionModel am = new TransactionModel();
            ArrayList<Transaction_History> list = am.top1PostBuy();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
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

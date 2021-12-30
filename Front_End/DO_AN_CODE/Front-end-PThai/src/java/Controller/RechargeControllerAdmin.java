/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Recharge;
import Entity.RechargeAdmin;
import Entity.Search_Recharge;
import Model.RechargeModelAdmin;
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
@WebServlet(name = "RechargeControllerAdmin", urlPatterns = {"/RechargeControllerAdmin"})
public class RechargeControllerAdmin extends HttpServlet {

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
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.getListRecharge();
            request.setAttribute("listR", list);
            request.getRequestDispatcher("Admin/pages/recharge_history.jsp").forward(request, response);
        }
        if (act.equals("search")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.searchDate(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search1")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.searchDate2(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("searchRbyWallet")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.searchDatebyWallet(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
                if (act.equals("searchRbyPost")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.searchDatebyWallet(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("searchRbyWallet2")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.searchDatebyWallet2(sup.getStart(), sup.getEnd(),sup.getWallet());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewRechargebyWallet")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> a = am.getRechargebyWaalet(op);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewR")) {
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.getListRecharge();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        
        if (act.equals("viewRby1Hour")) {
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.getListRecharge1Hour();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        
        if (act.equals("viewTop3")) {
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.top3Recharge();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTop1PostBuy")) {
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.top3Recharge();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTop1Recharge")) {
            RechargeModelAdmin am = new RechargeModelAdmin();
            ArrayList<RechargeAdmin> list = am.top1Recharge();
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

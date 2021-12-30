/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Category;
import Entity.Suppervisor;
import Entity.User;
import Entity.UserAdmin;
import Entity.User_Cate;
import Model.CategoryAdmin;
import Model.SupModelAdmin;
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
@WebServlet(name = "SupControllerAdmin", urlPatterns = {"/SupControllerAdmin"})
public class SupControllerAdmin extends HttpServlet {

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
            SupModelAdmin am = new SupModelAdmin();
            ArrayList<UserAdmin> list = am.getListSup();
            request.setAttribute("listS", list);
            request.getRequestDispatcher("Admin/pages/suppervisor.jsp").forward(request, response);
        }
        if (act.equals("add")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            UserAdmin sup = json.fromJson(op, UserAdmin.class);
            SupModelAdmin am = new SupModelAdmin();
            boolean a = am.addSup(sup.getUserID(),sup.getFullName(),sup.getPhone(),sup.getEmail(),sup.getAddress(),sup.getDate_of_Birth(),sup.getPassword(),0,sup.getGender(),sup.getCreateDate(),2);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("update")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            UserAdmin sup = json.fromJson(op, UserAdmin.class);
            SupModelAdmin am = new SupModelAdmin();
            boolean a = am.updateSup(sup.getUserID(),sup.getFullName(),sup.getPhone(),sup.getEmail(),sup.getAddress(),sup.getDate_of_Birth(),sup.getPassword(),sup.getGender(),sup.getUpdateDate());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("updatetoCate")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            User_Cate sup = json.fromJson(op, User_Cate.class);
            SupModelAdmin am = new SupModelAdmin();
            boolean a = am.updateCateandSup(sup.getUserID(),sup.getCategoryID());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("addtoCate")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            User_Cate sup = json.fromJson(op, User_Cate.class);
            SupModelAdmin am = new SupModelAdmin();
            boolean a = am.addSupandCate(sup.getUserID(),sup.getCategoryID(),0,0);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("del")) {
            String op = request.getParameter("get");
            SupModelAdmin am = new SupModelAdmin();
            Boolean list = am.deleteSup(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewCategory")) {
            CategoryAdmin am = new CategoryAdmin();
            ArrayList<Category> list = am.getListCategory();
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewSup")) {
            String op = request.getParameter("get");
             SupModelAdmin am = new SupModelAdmin();
            Suppervisor list = am.getSup(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
       if (act.equals("checkIDempty")) {
            String op = request.getParameter("get");
            SupModelAdmin am = new SupModelAdmin();
            Boolean list = am.checkUserExist(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
       if (act.equals("getLastIndexSup")) {
            String op = request.getParameter("get");
            SupModelAdmin am = new SupModelAdmin();
            ArrayList<UserAdmin> list = am.getLastIndexSup();
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

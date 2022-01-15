/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Post;
import Entity.PostAdmin;
import Entity.Search_Recharge;
import Model.PostModelAdmin;
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
 * @author MarkTran
 */
@WebServlet(name = "PostControllerAdmin", urlPatterns = {"/PostControllerAdmin"})
public class PostControllerAdmin extends HttpServlet {

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
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> list = am.getListPost();
            request.setAttribute("listPost", list);
            request.getRequestDispatcher("Admin/pages/post.jsp").forward(request, response);
        }
        if (act.equals("viewP")) {
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.getListPost();
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
            if (act.equals("viewPostByUser")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.getListPostByUser(op);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewTotalPost")) {
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            PostAdmin a = am.TotalPost();
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.searchDate(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("searchbyUser")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.searchDatebyU(sup.getWallet(),sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search2byUser")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.searchDate2byU(sup.getWallet(),sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("search1")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Search_Recharge sup = json.fromJson(op, Search_Recharge.class);
            PostModelAdmin am = new PostModelAdmin();
            ArrayList<PostAdmin> a = am.searchDate2(sup.getStart(), sup.getEnd());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("updateRead")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            boolean a = am.updateRead(op);
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("updateBlock")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            boolean a = am.updateBlock(op);
            boolean b = false;
            if(a){
                PostAdmin p = am.getPost(op);
                  SendMail sen = new SendMail();
               String toMail = p.getEmail();
                   b = sen.sendEmail("Notice from BTEC LAND for violating community standards", "Your post have ID: "+p.getPostID()+"; And post title: "+p.getTitle()+" has been temporarily locked for not complying with the regulations of BTEC LAND.", toMail);
              
            }
            String listTrainee = json.toJson(b);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("updateUnBlock")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            PostModelAdmin am = new PostModelAdmin();
            boolean a = am.updateUnBlock(op);
            boolean b = false;
            if(a){
                PostAdmin p = am.getPost(op);
                  SendMail sen = new SendMail();
               String toMail = p.getEmail();
              b = sen.sendEmail("Notice about unblocking posts from BTECLAND", "Through the review process as well as your cooperation, we decided to unblock your Post. Please comply with the standards and regulations set forth by BTEC LAND!!!", toMail);
              
            }
            String listTrainee = json.toJson(b);
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

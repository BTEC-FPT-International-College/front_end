/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Post;
import Model.PostModel;
import dao.dao;
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
@WebServlet(name = "UpdatePostController", urlPatterns = {"/UpdatePostController"})
public class UpdatePostController extends HttpServlet {

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
            String op = request.getParameter("gets");
            dao am = new dao();
            ArrayList<Post> list = am.getPostById(Integer.parseInt(op));
            Gson json = new Gson();
            String post = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(post);
        }
         if (act.equals("update")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Post pos = json.fromJson(op, Post.class);
            dao am = new dao();
              boolean a = am.updatePost(pos.getTitle(), pos.getAvatar(), 
            pos.getArea(), pos.getPrice(), pos.getSaleRent(),
            pos.getProvince(), pos.getDistrict(), pos.getWard(), pos.getDetailAddress(), pos.getDescription(),
            pos.getPhone(), pos.getEmail(), pos.getUpdateDay(), pos.getPostType(), 
            pos.getEndDay(), pos.getRoom(), pos.getBath(), pos.getCategoryId(), pos.getProvinceValue(), pos.getImage(), pos.getPostId());
            String listPost = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listPost);
           
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

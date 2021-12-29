/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Post;
import Entity.User;
import Model.PostModel;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "PostController", urlPatterns = {"/PostController"})
public class PostController extends HttpServlet {

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
        String action = request.getParameter("ac");
        
        if (action.equals("add")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Post pos = json.fromJson(op, Post.class);
            PostModel am = new PostModel();
            boolean a = am.addPost(pos.getPostCost(), pos.getTitle(), pos.getAvatar(), pos.getArea(), pos.getPrice(), pos.getSaleRent(), pos.getProvince(), pos.getDistrict(), pos.getWard(), pos.getDetailAddress(), pos.getDescription(), pos.getPhone(), pos.getEmail(), pos.getCreateDay(), pos.getPostType(), pos.getCategoryId(), pos.getEndDay(), pos.getRoom(), pos.getBath(), pos.getUserId(), pos.getProvinceValue(), pos.getImage());
            String listPost = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listPost);
        }

        if (action.equals("view")) {
            String op = request.getParameter("get");
            PostModel am = new PostModel();
            ArrayList<Post> list = am.getPostById(op);
            Gson json = new Gson();
            String listPost = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listPost);
        }
        if (action.equals("del")) {
            String op = request.getParameter("get");
            PostModel am = new PostModel();
            Boolean list = am.deletePost(op);
            Gson json = new Gson();
            String listPos = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listPos);
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
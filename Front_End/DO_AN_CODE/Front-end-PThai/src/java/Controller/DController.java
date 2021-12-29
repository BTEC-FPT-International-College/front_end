/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Comment;
import Entity.Post;
import com.google.gson.Gson;
import dao.dao;
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
@WebServlet(name = "DController", urlPatterns = {"/DController"})
public class DController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
    
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String act = request.getParameter("ac");
        if (act.equals("view")) {
            String op = request.getParameter("get");
            dao am = new dao();
            ArrayList<Post> list = am.getPostById(Integer.parseInt(op));
            Gson json = new Gson();
            String listPost = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listPost);
        }
        if (act.equals("viewcomment")) {
            String op = request.getParameter("get");
            dao am = new dao();
            ArrayList<Comment> list = am.getCommentById(Integer.parseInt(op));
            Gson json = new Gson();
            String listComment = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listComment);
        }
         if (act.equals("relatedProperti")) {
            dao am = new dao();
            ArrayList<Post> list = am.getTop6();
            Gson json = new Gson();
            String listpost = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listpost);
        }
         if (act.equals("comment")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Comment cmt = json.fromJson(op, Comment.class);
            dao am = new dao();
            boolean a = am.setComment(cmt.getName(), cmt.getEmail(), cmt.getPhone(), cmt.getContent(), cmt.getCreate_day(), cmt.getPostid());
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

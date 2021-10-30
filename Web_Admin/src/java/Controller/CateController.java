/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;
import com.google.gson.Gson;
import Entity.Category;
import Entity.ViewDetailCate;
import Model.CategoryModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.nashorn.internal.parser.JSONParser;

/**
 *
 * @author nguyenbamang
 */
@WebServlet(name = "CateController", urlPatterns = {"/CateController"})
public class CateController extends HttpServlet {

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
            CategoryModel am = new CategoryModel();
            ArrayList<Category> list = am.getListCategory();
            request.setAttribute("listC", list);
            request.getRequestDispatcher("pages/cate.jsp").forward(request, response);
        }
        if (act.equals("add")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Category cate = json.fromJson(op, Category.class);
            CategoryModel am = new CategoryModel();
            boolean a = am.addCategory(cate.getCateID(), cate.getCateName(), cate.getCateImage(), cate.getCateDes(), cate.getCateCreateDate());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
          if (act.equals("del")) {
            String op = request.getParameter("get");
            CategoryModel am = new CategoryModel();
            Boolean list = am.deleteCC(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
          if (act.equals("update")) {
            String op = request.getParameter("get");
            Gson json = new Gson();
            Category cate = json.fromJson(op, Category.class);
            CategoryModel am = new CategoryModel();
            boolean a = am.updateCC(cate.getCateID(), cate.getCateName(), cate.getCateImage(), cate.getCateDes(), cate.getCateUpdateDate());
            String listTrainee = json.toJson(a);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewCategory")) {
            String op = request.getParameter("get");
            CategoryModel am = new CategoryModel();
            Category list = am.getCategory(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
        if (act.equals("viewCateDetail")) {
            String op = request.getParameter("get");
            CategoryModel am = new CategoryModel();
            ViewDetailCate list = am.viewCateDetail(op);
            Gson json = new Gson();
            String listTrainee = json.toJson(list);
            response.setContentType("text/html");
            response.getWriter().write(listTrainee);
        }
       if (act.equals("checkIDempty")) {
            String op = request.getParameter("get");
            CategoryModel am = new CategoryModel();
            Boolean list = am.checkCateExsist(op);
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

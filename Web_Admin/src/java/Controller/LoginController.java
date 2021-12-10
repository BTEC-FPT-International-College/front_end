/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.User;
import Model.LoginModel;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nguyenbamang
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
        String act = request.getParameter("ac");
        PrintWriter out = response.getWriter();
        if (act.equals("login")) {
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            // tao Session
            LoginModel am = new LoginModel();
            if (am.checkLogin(email, password)) {
                // lay thong tin role ve         
                User user = am.getlogin(email, password);
                int RoleID = user.getRoleId();
                String fullname = user.getFullName();
                String UserID = user.getUserID();
                // tao session va them cac gia tri vao trong sesstion
                HttpSession session = request.getSession();
                session.setAttribute("User", email);
                session.setAttribute("Pass", password);
                session.setAttribute("RoleID", RoleID);
                session.setAttribute("FullName", fullname);
                session.setAttribute("UserID", UserID);
                // chuyen ve tung trang home theo tung role khac nhau 
                if (RoleID == 1) {
                    response.sendRedirect("index.jsp");
                }
                if (RoleID == 2) {
                    response.sendRedirect("staff.jsp");

                    //request.getRequestDispatcher("Testlogin.jsp").forward(request, response);
                }
            }else {
                request.setAttribute("error", "Username and Password invalid !");
                RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                dis.forward(request, response);
            }

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

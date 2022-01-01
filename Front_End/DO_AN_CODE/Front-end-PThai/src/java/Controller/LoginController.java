/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Profile;
import Model.checkLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mangn
 */
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
            try {
                if (act.equals("login")) {
                String email = request.getParameter("email");
                String password = request.getParameter("pass");
                // tao Session
                 
                checkLogin am = new checkLogin();
                if (am.checkLogin(email, password)) {
                    Profile user = am.getlogin(email, password);
                    String RoleID = user.getRoleID();
                    String userID = user.getUserID();
                    int status = user.getStatus();
                    if(status == 1){
                    request.setAttribute("error","Your accout have blocked");
                    RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                    dis.forward(request, response);
                    }else{
                         HttpSession session = request.getSession();
                    session.setAttribute("User", userID);
                    session.setAttribute("Role", RoleID);
                    
                    // chuyen ve tung trang home theo tung role khac nhau 
                    if (RoleID.equals("3")) {
//                    request.getRequestDispatcher("pages/index.jsp").forward(request, response);
//                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/MainControllers?ac=view");
//                    dispatcher.forward(request, response);
                        response.sendRedirect("profile.jsp?id="+userID);
                    }
                    if (RoleID.equals("1")) {
//                    request.getRequestDispatcher("pages/index.jsp").forward(request, response);
//                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/MainControllers?ac=view");
//                    dispatcher.forward(request, response);
                        response.sendRedirect("Admin/index.jsp");
                    }
                    }
                   
                } else {
                    request.setAttribute("error","Password or email is invalid");
                    RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                    dis.forward(request, response);
                }

            }
        }finally {
            out.close();
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

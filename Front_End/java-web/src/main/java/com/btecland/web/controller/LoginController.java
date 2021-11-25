package com.btecland.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.btecland.web.dao.ILoginDao;
import com.btecland.web.dao.checkLogin;
import com.btecland.web.model.UserModel;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(urlPatterns = {"/log"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out = response.getWriter();
		 checkLogin am = new checkLogin();
         try {
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
         if (am.checkLogin(username, password)) {
             // lay thong tin role ve         
             UserModel user = am.getlogin(username, password);
             String RoleID = user.getRoleid();
             String UserID = user.getUserid();
             // tao session va them cac gia tri vao trong sesstion
             HttpSession session = request.getSession();
             session.setAttribute("username", username);
             session.setAttribute("password", password);
             session.setAttribute("RoleID", RoleID);
             session.setAttribute("UserID", UserID);
             // chuyen ve tung trang home theo tung role khac nhau 
             if ("1".equals(RoleID)) {
                   response.sendRedirect("loginsuccess.jsp?id="+UserID);
             }
             if ("2".equals(RoleID)) {
                 response.sendRedirect("#");
             }
             if ("3".equals(RoleID)) {
                 response.sendRedirect("#");
             }
         } else {
             request.setAttribute("error", "Username and Password invalid !");
             RequestDispatcher dis = request.getRequestDispatcher("/decorators/login.jsp");
             dis.forward(request, response);
         }

     } finally {
         out.close();
     }
		
	}

}

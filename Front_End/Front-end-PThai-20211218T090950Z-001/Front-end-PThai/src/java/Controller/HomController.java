/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Post;
import service.IPostService;
import service.impl.PostServiceImpl;
import dao.dao;
/**
 *
 * @author Admin
 */
@WebServlet(urlPatterns = {"/home"})
public class HomController extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              dao dao = new dao();
              List<Post> post = dao.getListRecharge();
		request.setAttribute("posts", post); 
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
                
    }
    
}


    
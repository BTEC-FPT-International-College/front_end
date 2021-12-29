/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.Post;
import java.util.List;
import dao.dao;

/**
 *
 * @author MarkTran
 */
@WebServlet(name = "LoadMoreController", urlPatterns = {"/LoadMoreController"})
public class LoadMoreController extends HttpServlet {

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
        String amount = request.getParameter("exits");
        int iamount = Integer.parseInt(amount);
        dao dao = new dao();
       	PrintWriter out = response.getWriter();
                List<Post> list = dao.getNext6(iamount); 
		for(Post p : list)
		out.println(
				 "<div class=\"product col-md-4\">\r\n"
				+ "<article class=\"aa-properties-item\">\r\n"
				+ "<a href='post-detail.jsp?postId="+p.getPostId()+"&&id="+p.getUserId()+"'"
				+ "class=\"aa-properties-item-img\"> <img\r\n"
				+ "src=\""+p.getAvatar()+"\" alt=\"img\">\r\n"
				+ "</a>\r\n"
				+ "<div class=\"aa-tag for-"+p.getSaleRent()+"\">For\r\n"
				+ ""+p.getSaleRent()+"</div>\r\n"
				+ "<div class=\"aa-properties-item-content\">\r\n"
				+ "<div class=\"aa-properties-info\">\r\n"
				+ "<span>"+p.getRoom()+" Rooms</span> <span>"+p.getBath()+"\r\n"
				+ "Baths</span> <span>Area: "+p.getArea()+" m²</span>\r\n"
				+ "</div>\r\n"
				+ "<div class=\"aa-properties-about\">\r\n"
				+ "<h3>\r\n"
				+ "<a href=\"post-detail.jsp?postId="+p.getPostId()+"&&id="+p.getUserId()+"\">"+p.getTitle()+"</a>\r\n"
				+ "</h3>\r\n"
				+ "</div>\r\n"
				+ "<div id=\"post-location\">\r\n"
				+ "<i class=\"fa fa-map-marker\"> "+p.getProvince()+","+p.getDistrict()+","+p.getWard()+","+p.getDetailAddress()+"</i>\r\n"
				+ "</div>\r\n"
				+ "<div class=\"aa-properties-detial\">\r\n"
				+ "<span class=\"aa-price\"> $ "+p.getPrice()+"</span>"
				+ "<a href=\"post-detail.jsp?postId="+p.getPostId()+"&&id="+p.getUserId()+"\" class=\"aa-secondary-btn\">View Details</a>"
				+ "</div>\r\n"
				+ "</div>\r\n"
				+ "</article>\r\n"
				+ "</div>"
				
		
				);
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

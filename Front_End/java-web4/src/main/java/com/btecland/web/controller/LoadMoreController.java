package com.btecland.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.btecland.web.model.PostModel;
import com.btecland.web.service.IPostService;

/**
 * Servlet implementation class LoadMoreController
 */
@WebServlet("/load")
public class LoadMoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IPostService postService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		List<PostModel> list =  postService.getNext6(2); 
		for(PostModel p : list)
		out.println(
				 "<div class=\"product col-md-4\">\r\n"
				+ "								<article class=\"aa-properties-item\">\r\n"
				+ "									<a href='<c:url value=\"/postdetail.jsp\"/>'\r\n"
				+ "										class=\"aa-properties-item-img\"> <img\r\n"
				+ "										src=\""+p.getAvartar()+"\" alt=\"img\">\r\n"
				+ "									</a>\r\n"
				+ "									<div class=\"aa-tag for-"+p.getSale_rent()+"\">For\r\n"
				+ "										"+p.getSale_rent()+"</div>\r\n"
				+ "									<div class=\"aa-properties-item-content\">\r\n"
				+ "										<div class=\"aa-properties-info\">\r\n"
				+ "											<span>"+p.getRoom()+" Rooms</span> <span>"+p.getBath()+"\r\n"
				+ "												Baths</span> <span>Area: "+p.getArea()+" m²</span>\r\n"
				+ "										</div>\r\n"
				+ "										<div class=\"aa-properties-about\">\r\n"
				+ "											<h3>\r\n"
				+ "												<a href=\"#\">"+p.getTitle()+"</a>\r\n"
				+ "											</h3>\r\n"
				+ "										</div>\r\n"
				+ "										<div id=\"post-location\">\r\n"
				+ "											<i class=\"fa fa-map-marker\"> "+p.getLocation()+"</i>\r\n"
				+ "										</div>\r\n"
				+ "										<div class=\"aa-properties-detial\">\r\n"
				+ "											<span class=\"aa-price\"> $ "+p.getPrice()+"</span> <a href=\"#\"\r\n"
				+ "												class=\"aa-secondary-btn\">View Details</a>\r\n"
				+ "										</div>\r\n"
				+ "									</div>\r\n"
				+ "								</article>\r\n"
				+ "							</div>"
				
		
				);

//		RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
//		rd.forward(request, response);
	}

}

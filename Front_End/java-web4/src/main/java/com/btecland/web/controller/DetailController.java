package com.btecland.web.controller;

import java.io.IOException;
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
 * Servlet implementation class DetailController
 */
@WebServlet("/detail")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IPostService postService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String postid = request.getParameter("postId");

		request.setAttribute("detail", postService.getPostById(postid));
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/post-detail.jsp");
		rd.forward(request, response);
		 
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

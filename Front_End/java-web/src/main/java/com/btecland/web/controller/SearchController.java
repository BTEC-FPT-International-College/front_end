package com.btecland.web.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.btecland.web.dao.ISearchDAO;
import com.btecland.web.model.PostModel;
import com.btecland.web.service.IPostService;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IPostService postService;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	PostModel postModel = new PostModel();
	String searchAll = request.getParameter("location");
	postModel.setLocation(searchAll);
	request.setAttribute("posts", postService.searchAll(searchAll)); 
	RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
	rd.forward(request, response);
	}
	

}

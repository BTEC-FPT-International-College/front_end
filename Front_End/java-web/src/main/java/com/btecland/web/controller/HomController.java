package com.btecland.web.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.btecland.web.model.PostModel;
import com.btecland.web.service.ICategoryService;
import com.btecland.web.service.IPostService;
import com.btecland.web.service.impl.PostServiceImpl;

@WebServlet(urlPatterns = {"/home"})
public class HomController  extends HttpServlet {
	@Inject
	private ICategoryService categoryService;
	@Inject
	private IPostService postService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String title = "Demo test create post ";
		String description = "test add post";
		String categoryid = "1";
		PostModel postModel = new PostModel();
		postModel.setTitle(title);
		postModel.setDescription(description);
		postModel.setCategoryid(categoryid);
		postService.save(postModel);
		/*String categoryid = "1";
		request.setAttribute("posts", postService.findPostByCategoryID(categoryid));
		request.setAttribute("categories", categoryService.findAll()); */
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
	}

}

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

@WebServlet(urlPatterns = {"/home","/login"})
public class HomController  extends HttpServlet {
//	@Inject
//	private ICategoryService categoryService;
	@Inject
	private IPostService postService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		String title = "Demo test create post123 ";
//		String description = "test add post23";
//		String categoryid = "1";
//		PostModel postModel = new PostModel();
//		postModel.setTitle(title);
//		postModel.setDescription(description);
//		postModel.setCategoryid(categoryid);
//		postService.save(postModel);
//		request.setAttribute("posts", postService.findPostByCategoryID(categoryid));
		String action = request.getParameter("action");
		if(action != null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/login.jsp");
			rd.forward(request, response);
		}else if(action != null && action.equals("logout")) {
			//tra ve logout
		}else {
		request.setAttribute("posts", postService.getTop6()); 
		RequestDispatcher rd = request.getRequestDispatcher("view/web/home.jsp");
		rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
	}

}

package com.btecland.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.btecland.web.dao.ProfileDao;
import com.btecland.web.dao.RechargeDao;
import com.btecland.web.dao.TransactionDao;
import com.btecland.web.dao.checkLogin;
import com.btecland.web.model.PostModel;
import com.btecland.web.model.ProfileModel;
import com.btecland.web.model.RechargeModel;
import com.btecland.web.model.TransactionModel;
import com.btecland.web.service.ICategoryService;
import com.btecland.web.service.IPostService;
import com.btecland.web.service.impl.PostServiceImpl;

@WebServlet(urlPatterns = {"/home","/login","/profile","/loginsss","/transaction","/recharge"})
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
		}else if(action != null && action.equals("recharge")) {
			RechargeDao am = new RechargeDao();
            ProfileDao pm = new ProfileDao();
            ArrayList<RechargeModel> list = am.getListRecharge();
            ArrayList<ProfileModel> list2 = pm.getListProfile();
            request.setAttribute("listR", list);
            request.setAttribute("listP", list2);
            request.getRequestDispatcher("view/web/recharge-history.jsp").forward(request, response);
		}else if(action != null && action.equals("transaction")) {
			TransactionDao am = new TransactionDao();
            ProfileDao pm = new ProfileDao();
            ArrayList<TransactionModel> list = am.getListTransaction();
            ArrayList<ProfileModel> list2 = pm.getListProfile();
            request.setAttribute("listT", list);
            request.setAttribute("listP", list2);
            request.getRequestDispatcher("view/web/transaction-history.jsp").forward(request, response);//tra ve logout
		}else if(action !=null && action.equals("profile")) {
		            ProfileDao am = new ProfileDao();
		            ArrayList<ProfileModel> list = am.getListProfile();
		            request.setAttribute("listP", list);
		            request.getRequestDispatcher("view/web/profile.jsp").forward(request, response);
		}else{
		request.setAttribute("posts", postService.getTop6()); 
		RequestDispatcher rd = request.getRequestDispatcher("view/web/home.jsp");
		rd.forward(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
	}

}

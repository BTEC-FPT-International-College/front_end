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
import com.btecland.web.model.Profile;
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
           
		}else if(action != null && action.equals("createpost")){
		    request.getRequestDispatcher("view/web/newpost.jsp").forward(request, response);
		} else if(action != null && action.equals("transaction")) {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	String action = request.getParameter("action");
		if(action != null && action.equals("loginsss")) {
			 PrintWriter out = response.getWriter();
			 checkLogin am = new checkLogin();
	         try {
			String username = request.getParameter("user");
			String password = request.getParameter("pass");
	         if (am.checkLogin(username, password)) {
	             // lay thong tin role ve         
	             Profile user = am.getlogin(username, password);
	             String RoleID = user.getRoleID();
	             String UserID = user.getUserID();
	             // tao session va them cac gia tri vao trong sesstion
	             HttpSession session = request.getSession();
	             session.setAttribute("username", username);
	             session.setAttribute("password", password);
	             session.setAttribute("RoleID", RoleID);
	             session.setAttribute("UserID", UserID);
	             // chuyen ve tung trang home theo tung role khac nhau 
	             if ("1".equals(RoleID)) {
	            	 response.sendRedirect("/decorators/home.jsp?id="+UserID);
	             }
	             if ("2".equals(RoleID)) {
	                 response.sendRedirect("#");
	             }
	             if ("3".equals(RoleID)) {
	                 response.sendRedirect("#");
	             }
	         } else {
	             request.setAttribute("error", "Username or Password invalid !");
	             RequestDispatcher dis = request.getRequestDispatcher("facebook.com");
	             dis.forward(request, response);
	         }

	     } finally {
	         out.close();
	     }
			
		}
	}

}

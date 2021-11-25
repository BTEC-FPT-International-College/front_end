package com.btecland.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.btecland.dao.HomeDAO;
import com.btecland.model.PostModel;

/**
 * Servlet implementation class HomeController
 */
@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HomeController() {
        // TODO Auto-generated constructor stub
    }
    @Inject
    private HomeDAO homeDao;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
//		HomeDAO homeDao = new HomeDAO(); su dung inject hay hon 
//		List<PostModel> list = homeDao.findAll();
		request.setAttribute("posts", homeDao.findAll());
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}


}

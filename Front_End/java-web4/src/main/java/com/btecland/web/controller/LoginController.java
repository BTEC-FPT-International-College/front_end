package com.btecland.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.btecland.web.dao.ILoginDao;
import com.btecland.web.dao.checkLogin;
import com.btecland.web.model.Profile;
import com.btecland.web.model.ProfileModel;
import com.btecland.web.model.UserModel;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.mysql.cj.xdevapi.JsonArray;
import org.json.simple.JSONObject;
import java.util.ArrayList;  
import java.util.List;  
import org.json.simple.JSONValue;  


/**
 * Servlet implementation class LoginController
 */
@WebServlet(urlPatterns = {"/loginss"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		Connection con;
		PreparedStatement statement;
		ResultSet resultSet;
		List list = new ArrayList();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		JSONObject obj = new JSONObject();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?" + "user=root&password=tranmanh@123");
			statement = con.prepareStatement("SELECT fullname, roleid,userid FROM tbl_user WHERE username = ? AND   password = ?");
		    statement.setString(1, username);
            statement.setString(2, password);
            
            resultSet = statement.executeQuery();
            
            String msg;
            
            HttpSession session = request.getSession();
            
            if(resultSet.next()) {
            	session.setAttribute("username", username);
            	session.setAttribute("password", password);
            	
            	msg = "1";
            	obj.put("msg", msg);
            	list.add(obj);
            	String jsonText = JSONValue.toJSONString(list);  
            	out.print(jsonText);
            	out.flush();
            	
            }else {
            	msg = "3";
            	obj.put("msg", msg);
            	list.add(obj);
            	String jsonText = JSONValue.toJSONString(list);  
            	out.print(jsonText);
            	out.flush();
            }
		} catch (ClassNotFoundException e) {
			Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, e);
		} catch (SQLException e) {
			Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, e);
		}
}
}

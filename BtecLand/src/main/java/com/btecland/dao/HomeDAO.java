package com.btecland.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.btecland.context.GetConnection;
import com.btecland.model.PostModel;

public class HomeDAO {
 Connection connection = null;
 PreparedStatement ps = null;
 ResultSet rs = null;
public List<PostModel> findAll(){
	List<PostModel> list = new ArrayList<PostModel>();
	String sql = "SELECT * FROM web.tbl_post"; 
	try {
		connection = new GetConnection().getConnection();
		ps = connection.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()) {
			list.add(new PostModel(
					rs.getString(1),
					rs.getString(2),
					rs.getInt(3),
					rs.getInt(4),
					rs.getString(5),
					rs.getString(6),
					rs.getString(7),
					rs.getString(8),
					rs.getInt(9),
					rs.getInt(10)
					));
		}
	} catch (Exception e) {
	
	}
	return list;
	
}
}

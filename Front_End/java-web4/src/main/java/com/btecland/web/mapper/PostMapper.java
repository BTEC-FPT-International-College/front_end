package com.btecland.web.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.btecland.web.model.PostModel;

public class PostMapper implements RowMapper<PostModel>{

	@Override
	public PostModel mapRow(ResultSet resultSet) {
		try {
		PostModel post = new PostModel();
		post.setPostid(resultSet.getLong("postid"));
		post.setTitle(resultSet.getString("title"));
		post.setDescription(resultSet.getString("description"));
		post.setAvartar(resultSet.getString("avatar"));
		post.setArea(resultSet.getInt("area"));
		post.setPrice(resultSet.getInt("price"));
		post.setSale_rent(resultSet.getString("sale_rent"));
		post.setLocation(resultSet.getString("location"));
		post.setRoom(resultSet.getInt("room"));
		post.setBath(resultSet.getInt("bath"));
		
		return post;
	}catch (SQLException e) {
		return null;
	}
	}
	
}

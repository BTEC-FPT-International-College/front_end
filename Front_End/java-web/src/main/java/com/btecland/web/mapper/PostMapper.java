package com.btecland.web.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.btecland.web.model.PostModel;

public class PostMapper implements RowMapper<PostModel>{

	@Override
	public PostModel mapRow(ResultSet resultSet) {
		try {
		PostModel post = new PostModel();
		post.setTitle(resultSet.getString("title"));
		post.setDescription(resultSet.getString("description"));
		return post;
	}catch (SQLException e) {
		return null;
	}
	}
	
}

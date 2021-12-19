/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import Entity.Post;

public class PostMapper implements RowMapper<Post>{

	@Override
	public Post mapRow(ResultSet resultSet) {
		try {
		Post post = new Post();
		post.setPostId(resultSet.getString("postid"));
		post.setTitle(resultSet.getString("title"));
		post.setDescription(resultSet.getString("description"));
		post.setAvatar(resultSet.getString("avatar"));
		post.setArea(resultSet.getInt("area"));
		post.setPrice(resultSet.getInt("price"));
		post.setSaleRent(resultSet.getString("sale_rent"));
		post.setLocation(resultSet.getString("location"));
		post.setRoom(resultSet.getInt("room"));
		post.setBath(resultSet.getInt("bath"));
		
		return post;
	}catch (SQLException e) {
		return null;
	}
	}
	
}

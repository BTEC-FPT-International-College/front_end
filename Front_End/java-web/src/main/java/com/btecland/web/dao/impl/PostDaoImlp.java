package com.btecland.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.btecland.web.dao.IPostDao;
import com.btecland.web.mapper.PostMapper;
import com.btecland.web.model.PostModel;

public class PostDaoImlp extends AbstractDao<PostModel> implements IPostDao{

	@Override
	public List<PostModel> findPostByCategoryID(String categoryid) {
		String sql = "SELECT * FROM web.tbl_post WHERE categoryid = ? "; 
		return query(sql, new PostMapper(), categoryid);
}

	@Override
	public  Long save(PostModel postModel){ //tra ve id cua post
		ResultSet resultSet = null;
		Long postid = null;
		Connection connection =null;
		PreparedStatement statement = null;
		try {
			String sql = "INSERT INTO tbl_post ( title, description, categoryid) VALUES(?, ?, ?)";
			connection = getConnection(); 
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1,postModel.getTitle());
			statement.setString(2, postModel.getDescription() );
			statement.setString(3, postModel.getCategoryid());
			statement.executeUpdate(); // co the dung cho them sua xoa
			resultSet = statement.getGeneratedKeys();
			if(resultSet.next()) {
				return resultSet.getLong(1);
			}
			connection.commit();
			return postid;
		} catch (Exception e) {
			if(connection != null) {
				dang lam cai auto cho tbl post
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			return null;
		} finally {
			try{
				if(connection != null) {
				connection.close();
			}
			if(statement !=null) {
				statement.close();
			}
			if(resultSet != null) {
				resultSet.close();
			}
		} catch (SQLException e) {
			return null;
		}
		}
	}
}

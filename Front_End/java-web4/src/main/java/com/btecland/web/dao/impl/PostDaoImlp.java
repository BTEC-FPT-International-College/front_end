package com.btecland.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.btecland.web.dao.IPostDao;
import com.btecland.web.mapper.CategoryMapper;
import com.btecland.web.mapper.PostMapper;
import com.btecland.web.model.PostModel;

public class PostDaoImlp extends AbstractDao<PostModel> implements IPostDao{

	@Override
	public List<PostModel> findPostByCategoryID(String categoryid) {
		String sql = "SELECT * FROM web.tbl_post WHERE categoryid = ? "; 
		return query(sql, new PostMapper(), categoryid);
}

	@Override
	public  Long save(PostModel postModel){ //insert data va tra ve id cua post
		String sql = "INSERT INTO tbl_post ( title, description, categoryid) VALUES(?, ?, ?)";
		return insert (sql, postModel.getTitle(), postModel.getDescription(),postModel.getCategoryid());
		
				//  code k dung ham chung
				//		ResultSet resultSet = null;
				//		Long postid = null;
				//		Connection connection =null;
				//		PreparedStatement statement = null;
				//		try {
				//			String sql = "INSERT INTO tbl_post ( title, description, categoryid) VALUES(?, ?, ?)";
				//			connection = getConnection(); 
				//			connection.setAutoCommit(false);
				//			statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				// 			statement.setString(1,postModel.getTitle());
				//            statement.setString(2, postModel.getDescription() );
				//			statement.setString(3, postModel.getCategoryid());
				//			statement.executeUpdate(); // co the dung cho them sua xoa
				//			resultSet = statement.getGeneratedKeys();
				//			if(resultSet.next()) {
				//				postid = resultSet.getLong(1);
				//			}
				//			connection.commit();
				//			return postid;
				//		} catch (SQLException e) {
				//			if(connection != null) {
				//				try {
				//					connection.rollback();
				//				} catch (SQLException e1) {
				//					e1.printStackTrace();
				//				}
				//			}
				//			return null;
				//		} finally {
				//			try{
				//				if(connection != null) {
				//				connection.close();
				//			}
				//			if(statement !=null) {
				//				statement.close();
				//			}
				//			if(resultSet != null) {
				//				resultSet.close();
				//			}
				//		} catch (SQLException e) {
				//			return null;
				//		}
				//		}
	}

	@Override
	public void update(PostModel postModel) {
		String sql = "DELETE FROM web.tbl_post WHERE id=?";
//		this.update(sql, postModel.get);
	}

	@Override
	public List<PostModel> findAll() {
		String sql = "SELECT * FROM web.tbl_post"; 
		return query(sql, new PostMapper());
	}

	@Override
	public List<PostModel> searchAll(String location) {
		String sql = "SELECT * FROM web.tbl_post WHERE location LIKE ?";
		return query(sql, new PostMapper(), "%" + location + "%");
	}

	@Override
	public List<PostModel> getTop6() {
		String sql = "SELECT * FROM web.tbl_post limit 6"; 
		return query(sql, new PostMapper());
	}

	@Override
	public List<PostModel> getNext6(int amout) {
		String sql = "SELECT *\r\n"
				+ "FROM web.tbl_post\r\n"
				+ "ORDER BY postid\r\n"
				+ "LIMIT 6\r\n"
				+ "OFFSET ?"; 
		return query(sql, new PostMapper(), amout);
	}

	@Override
	public List<PostModel> getPostById(String postid) {
		String sql = "SELECT * FROM web.tbl_post WHERE postid = ?";
		return query(sql, new PostMapper(), postid);
	}



	
}

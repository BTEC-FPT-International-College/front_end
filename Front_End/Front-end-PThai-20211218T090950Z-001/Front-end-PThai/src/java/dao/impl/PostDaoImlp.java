/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import dao.IPostDao;
import mapper.PostMapper;
import Entity.Post;
/**
 *
 * @author Admin
 */
public class PostDaoImlp extends AbstractDao<Post> implements IPostDao{

	@Override
	public List<Post> findPostByCategoryID(String categoryid) {
		String sql = "SELECT * FROM tbl_post WHERE categoryid = ? "; 
		return query(sql, new PostMapper(), categoryid);
}

	@Override
	public  Long save(Post postModel){ //insert data va tra ve id cua post
		String sql = "INSERT INTO tbl_post ( title, description, categoryid) VALUES(?, ?, ?)";
		return insert (sql, postModel.getTitle(), postModel.getDescription(),postModel.getCategoryId());
		
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
	public void update(Post postModel) {
		String sql = "DELETE FROM tbl_post WHERE id=?";
//		this.update(sql, postModel.get);
	}

	@Override
	public List<Post> findAll() {
		String sql = "SELECT * FROM tbl_post"; 
		return query(sql, new PostMapper());
	}

	@Override
	public List<Post> searchAll(String location) {
		String sql = "SELECT * FROM tbl_post WHERE location LIKE ?";
		return query(sql, new PostMapper(), "%" + location + "%");
	}

	@Override
	public List<Post> getTop6() {
		String sql = "SELECT * FROM tbl_post limit 6"; 
		return query(sql, new PostMapper());
	}

	@Override
	public List<Post> getNext6(int amount) {
		String sql = "SELECT * FROM tbl_post ORDER BY postid LIMIT 6 OFFSET ?"; 
		return query(sql, new PostMapper(), amount);
	}

	@Override
	public List<Post> getPostById(String postid) {
		String sql = "SELECT * FROM tbl_post WHERE postid = ?";
		return query(sql, new PostMapper(), postid);
	}


}

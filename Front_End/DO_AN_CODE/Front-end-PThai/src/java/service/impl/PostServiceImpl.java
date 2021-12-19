/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.impl;
import java.util.List;



import dao.IPostDao;
import dao.impl.PostDaoImlp;
import Entity.Post;
import javax.inject.Inject;
import service.IPostService;
/**
 *
 * @author Admin
 */
public class PostServiceImpl implements IPostService{
	
         @Inject
         private IPostDao postDao;
	@Override
	public List<Post> findPostByCategoryID(String categoryid) {
		return postDao.findPostByCategoryID(categoryid);
	}
	@Override
	public Post save(Post post) {
		Long postid = postDao.save(post); // lay post id tu ham save
		System.out.print(postid);
		return null;
	}
	@Override
	public List<Post> findAll() {
		return postDao.findAll();
	}
	@Override
	public List<Post> searchAll(String location) {
		return postDao.searchAll(location);
	}
	@Override
	public List<Post> getTop6() {
		return postDao.getTop6();
	}
	@Override
	public List<Post> getNext6(int iamout) {
		return postDao.getNext6(iamout);
	}
	@Override
	public List<Post> getPostById(String postid) {
		
		return postDao.getPostById(postid);
	}
}
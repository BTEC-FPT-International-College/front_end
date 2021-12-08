package com.btecland.web.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.btecland.web.dao.IPostDao;
import com.btecland.web.dao.impl.PostDaoImlp;
import com.btecland.web.model.PostModel;
import com.btecland.web.service.IPostService;

public class PostServiceImpl implements IPostService{
	
   @Inject
   private IPostDao postDao;
	@Override
	public List<PostModel> findPostByCategoryID(String categoryid) {
		return postDao.findPostByCategoryID(categoryid);
	}
	@Override
	public PostModel save(PostModel postModel) {
		Long postid = postDao.save(postModel); // lay post id tu ham save
		System.out.print(postid);
		return null;
	}
	@Override
	public List<PostModel> findAll() {
		return postDao.findAll();
	}
	@Override
	public List<PostModel> searchAll(String location) {
		return postDao.searchAll(location);
	}
	@Override
	public List<PostModel> getTop6() {
		return postDao.getTop6();
	}
	@Override
	public List<PostModel> getNext6(int amout) {
		return postDao.getNext6(amout);
	}
	@Override
	public List<PostModel> getPostById(String postid) {
		
		return postDao.getPostById(postid);
	}

}

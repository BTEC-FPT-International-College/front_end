package com.btecland.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.btecland.dao.IPostDao;
import com.bteclam.dao.impl.PostDaoImlp;
import com.btecland.model.PostModel;
import com.btecland.service.IPostService;

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

}

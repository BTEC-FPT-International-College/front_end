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

}

package com.btecland.web.service;

import java.util.List;

import com.btecland.web.model.PostModel;

public interface IPostService {
	List<PostModel>  findAll();
	List<PostModel> getTop6();
	List<PostModel> getNext6();
	List<PostModel> findPostByCategoryID(String categoryid) ;
	PostModel save(PostModel postModel);
}

package com.btecland.service;

import java.util.List;

import com.btecland.model.PostModel;

public interface IPostService {
	List<PostModel>  findAll();
	List<PostModel> findPostByCategoryID(String categoryid) ;
	PostModel save(PostModel postModel);
	List<PostModel> searchAll(String location);
}

package com.btecland.web.service;

import java.util.List;

import com.btecland.web.model.PostModel;

public interface IPostService {
	List<PostModel> findPostByCategoryID(String categoryid) ;
	PostModel save(PostModel postModel);
}

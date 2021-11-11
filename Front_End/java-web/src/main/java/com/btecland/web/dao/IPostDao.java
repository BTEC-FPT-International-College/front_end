package com.btecland.web.dao;

import java.util.List;

import com.btecland.web.model.PostModel;

public interface IPostDao extends GenericDAO<PostModel>{
	List<PostModel> findPostByCategoryID(String categoryid);
	Long save(PostModel postModel); //tra ve id cua post
}

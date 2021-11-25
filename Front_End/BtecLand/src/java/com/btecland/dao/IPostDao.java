package com.btecland.dao;

import java.util.List;

import com.btecland.model.PostModel;

public interface IPostDao extends GenericDAO<PostModel>{
	List<PostModel> findAll();
	List<PostModel> findPostByCategoryID(String categoryid);
	Long save(PostModel postModel); //add data va tra ve id cua post
	void update(PostModel postModel);
	List<PostModel> searchAll(String location);
}

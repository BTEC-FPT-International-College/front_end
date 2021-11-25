package com.btecland.web.dao;

import java.util.List;

import com.btecland.web.model.PostModel;

public interface IPostDao extends GenericDAO<PostModel>{
	List<PostModel> findAll();
	List<PostModel> getTop6();
	List<PostModel> getNext6(int amout);
	List<PostModel> findPostByCategoryID(String categoryid);
	Long save(PostModel postModel); //add data va tra ve id cua post
	void update(PostModel postModel);
	List<PostModel> searchAll(String location);
}

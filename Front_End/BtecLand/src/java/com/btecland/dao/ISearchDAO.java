package com.btecland.dao;

import java.util.List;

import com.btecland.model.PostModel;

public interface ISearchDAO  extends GenericDAO<PostModel> {
	List<PostModel> searchAll(String location);
}

package com.btecland.web.dao;

import java.util.List;

import com.btecland.web.model.PostModel;

public interface ISearchDAO  extends GenericDAO<PostModel> {
	List<PostModel> searchAll(String location);
}

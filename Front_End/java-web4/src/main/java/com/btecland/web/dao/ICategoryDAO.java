package com.btecland.web.dao;

import java.util.List;

import com.btecland.web.model.CategoryModel;

public interface ICategoryDAO  extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
}

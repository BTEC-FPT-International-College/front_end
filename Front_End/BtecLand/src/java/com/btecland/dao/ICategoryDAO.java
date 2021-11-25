package com.btecland.dao;

import java.util.List;

import com.btecland.model.CategoryModel;

public interface ICategoryDAO  extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
}

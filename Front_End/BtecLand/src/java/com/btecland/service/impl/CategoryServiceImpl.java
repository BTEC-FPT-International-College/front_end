package com.btecland.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.btecland.dao.ICategoryDAO;
import com.btecland.model.CategoryModel;
import com.btecland.service.ICategoryService;

public class CategoryServiceImpl implements ICategoryService{
	
	@Inject
	private ICategoryDAO categoryDao;
	
	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

}

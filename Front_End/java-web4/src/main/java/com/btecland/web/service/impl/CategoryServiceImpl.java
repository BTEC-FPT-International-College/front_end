package com.btecland.web.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.btecland.web.dao.ICategoryDAO;
import com.btecland.web.dao.impl.CategoryDaoImpl;
import com.btecland.web.model.CategoryModel;
import com.btecland.web.service.ICategoryService;

public class CategoryServiceImpl implements ICategoryService{
	
	@Inject
	private ICategoryDAO categoryDao;
	
	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

}

package com.btecland.web.dao.impl;

import java.util.List;

import com.btecland.web.dao.ICategoryDAO;
import com.btecland.web.mapper.CategoryMapper;
import com.btecland.web.model.CategoryModel;

public class CategoryDaoImpl extends AbstractDao<CategoryModel> implements ICategoryDAO {
	
	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM web.tbl_category"; 
		return query(sql, new CategoryMapper());
	}
}
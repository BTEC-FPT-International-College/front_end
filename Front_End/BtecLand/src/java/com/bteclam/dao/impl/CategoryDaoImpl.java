package com.bteclam.dao.impl;

import java.util.List;

import com.btecland.dao.ICategoryDAO;
import com.btecland.mapper.CategoryMapper;
import com.btecland.model.CategoryModel;

public class CategoryDaoImpl extends AbstractDao<CategoryModel> implements ICategoryDAO {
	
	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM web.tbl_category"; 
		return query(sql, new CategoryMapper());
	}
}
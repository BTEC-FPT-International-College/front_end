package com.btecland.web.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.btecland.web.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		try {
			CategoryModel category = new CategoryModel();
			category.setName(resultSet.getString("name"));
			category.setCode(resultSet.getString("code"));
			return category;
		}catch(SQLException e) {
			return null;
		}
	}

}
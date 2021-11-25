package com.btecland.dao;

import java.util.List;

import com.btecland.mapper.RowMapper;

public interface GenericDAO<T> { 
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters); //dung de lay 1 list c�c model th�ng qua parametter(sql query)
	void update (String sql, Object... parameters); //use when edit or delete
	Long insert (String sql, Object... parameters);  //use when add
}

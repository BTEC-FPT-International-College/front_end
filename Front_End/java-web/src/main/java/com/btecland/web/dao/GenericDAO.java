package com.btecland.web.dao;

import java.util.List;

import com.btecland.web.mapper.RowMapper;

public interface GenericDAO<T> { 
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters); //dung de lay 1 list các model thông qua parametter(sql query)
	void update (String sql, Object... parameters); //use when edit or delete
	Long insert (String sql, Object... parameters);  //use when add
}

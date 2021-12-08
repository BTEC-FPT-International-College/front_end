package com.btecland.web.mapper;

import java.sql.ResultSet;

public interface RowMapper<T> { //this interface to mapping the data from resultset
	T mapRow(ResultSet rs);
}

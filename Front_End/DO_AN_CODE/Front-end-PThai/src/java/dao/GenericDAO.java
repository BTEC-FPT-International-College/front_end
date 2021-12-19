/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.util.List;

import mapper.RowMapper;
/**
 *
 * @author Admin
 */
public interface GenericDAO<T> { 
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters); //dung de lay 1 list c�c model th�ng qua parametter(sql query)
	void update (String sql, Object... parameters); //use when edit or delete
	Long insert (String sql, Object... parameters);  //use when add
}

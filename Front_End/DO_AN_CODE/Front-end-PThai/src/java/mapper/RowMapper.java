/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapper;
import java.sql.ResultSet;
/**
 *
 * @author Admin
 */
public  interface RowMapper<T> { //this interface to mapping the data from resultset
	T mapRow(ResultSet rs);
}

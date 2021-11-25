package com.btecland.web.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.btecland.web.model.UserModel;

public class LoginMapper implements RowMapper<UserModel>{

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel user = new UserModel();
			user.setUsername(resultSet.getString("username"));
			user.setPassword(resultSet.getString("password"));
			return user;
		}catch(SQLException e) {
			return null;
		}
	}

}

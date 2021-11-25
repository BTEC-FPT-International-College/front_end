package com.bteclam.dao.impl;

import com.btecland.dao.ILoginDao;
import com.btecland.mapper.LoginMapper;
import com.btecland.model.UserModel;

public class LoginDaoImpl  extends AbstractDao<UserModel> implements ILoginDao{

	@Override
	public Long login(String username, String password) {
		String sql = "SELECT * FROM tbl_user WHERE username = ? AND password = ?";
		return insert (sql, new LoginMapper(), username, password);
	}
}

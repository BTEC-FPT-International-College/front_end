package com.btecland.web.dao.impl;

import com.btecland.web.dao.ILoginDao;
import com.btecland.web.mapper.LoginMapper;
import com.btecland.web.model.UserModel;

public class LoginDaoImpl  extends AbstractDao<UserModel> implements ILoginDao{

	@Override
	public Long login(String username, String password) {
		String sql = "SELECT * FROM tbl_user WHERE username = ? AND password = ?";
		return insert (sql, new LoginMapper(), username, password);
	}
}

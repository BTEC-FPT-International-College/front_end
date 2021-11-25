package com.btecland.service.impl;

import javax.inject.Inject;

import com.btecland.dao.ILoginDao;
import com.btecland.service.ILoginService;

public class LoginServiceImpl implements ILoginService {

	@Inject
	private ILoginDao loginDao;
	@Override
	public Long login(String username, String password) {
		return  loginDao.login(username, password);
	}
		
}

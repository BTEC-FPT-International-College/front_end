package com.btecland.web.dao;

import com.btecland.web.model.UserModel;

public interface ILoginDao extends GenericDAO<UserModel>{
	Long login(String username, String password);
}

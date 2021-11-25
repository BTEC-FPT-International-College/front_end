package com.btecland.dao;

import com.btecland.model.UserModel;

public interface ILoginDao extends GenericDAO<UserModel>{
	Long login(String username, String password);
}

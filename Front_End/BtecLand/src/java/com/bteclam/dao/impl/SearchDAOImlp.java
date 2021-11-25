package com.bteclam.dao.impl;

import java.util.List;

import com.btecland.dao.IPostDao;
import com.btecland.dao.ISearchDAO;
import com.btecland.mapper.PostMapper;
import com.btecland.model.PostModel;

public class SearchDAOImlp extends AbstractDao<PostModel> implements ISearchDAO{

	@Override
	public List<PostModel> searchAll(String location) {
		String sql = "SELECT * FROM web.tbl_post WHERE location LIKE ?";
		return query(sql, new PostMapper(), "%" + location + "%");
	}

}

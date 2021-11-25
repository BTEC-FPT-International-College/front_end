package com.btecland.web.dao.impl;

import java.util.List;

import com.btecland.web.dao.IPostDao;
import com.btecland.web.dao.ISearchDAO;
import com.btecland.web.mapper.PostMapper;
import com.btecland.web.model.PostModel;

public class SearchDAOImlp extends AbstractDao<PostModel> implements ISearchDAO{

	@Override
	public List<PostModel> searchAll(String location) {
		String sql = "SELECT * FROM web.tbl_post WHERE location LIKE ?";
		return query(sql, new PostMapper(), "%" + location + "%");
	}

}

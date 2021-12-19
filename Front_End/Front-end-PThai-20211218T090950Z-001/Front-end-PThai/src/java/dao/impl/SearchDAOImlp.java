/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;
import java.util.List;

import dao.IPostDao;
import dao.ISearchDAO;
import mapper.PostMapper;
import Entity.Post;
/**
 *
 * @author Admin
 */
public class SearchDAOImlp extends AbstractDao<Post> implements ISearchDAO{

	@Override
	public List<Post> searchAll(String location) {
		String sql = "SELECT * FROM web.tbl_post WHERE location LIKE ?";
		return query(sql, new PostMapper(), "%" + location + "%");
	}

}
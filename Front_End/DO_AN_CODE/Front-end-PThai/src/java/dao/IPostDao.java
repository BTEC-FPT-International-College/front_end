/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.util.List;

import Entity.Post;
/**
 *
 * @author Admin
 */
public interface IPostDao extends GenericDAO<Post>{
	List<Post> findAll();
	List<Post> getTop6();
	List<Post> getNext6(int amout);
	List<Post> getPostById(String postid);
	List<Post> findPostByCategoryID(String categoryid);
	Long save(Post postModel); //add data va tra ve id cua post
	void update(Post postModel);
	List<Post> searchAll(String location);
}

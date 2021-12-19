/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import java.util.List;
import Entity.Post;
/**
 *
 * @author Admin
 */
public interface IPostService {
        List<Post>  findAll();
	List<Post> findPostByCategoryID(String categoryid) ;
	Post save(Post post);
	List<Post> searchAll(String location);
	List<Post>  getTop6();
	List<Post>  getNext6(int amout);
	List<Post> getPostById(String postid);
}

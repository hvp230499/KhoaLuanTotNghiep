/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kl.phuong.entities.Filter;
import kl.phuong.entities.Post;
import kl.phuong.repositories.PostRepository;

/**
 * @author USER
 *
 */
@Service
public class PostService {
	@Autowired
	private PostRepository postRepository;

	public List<Post> findByChuyenMuc(String ChuyenMuc) {
		return postRepository.findByChuyenMuc(ChuyenMuc);
	}
	
	public List<Post> filter(String ChuyenMuc, Filter filter) {
		return postRepository.filter(ChuyenMuc, filter);
	}
	
	public List<Post> findAll() {
		return postRepository.findAll();
	}
	
	public List<Post> findAll(String username) {
		return postRepository.findAll(username);
	}

	public Post findById(int PostID) {
		return postRepository.findById(PostID);
	}

	public int save(Post entity) {
		return postRepository.save(entity);
	}

	public void update(Post entity) {
		postRepository.update(entity);
	}

	public void delete(int PostID) {
		postRepository.delete(PostID);
	}
}

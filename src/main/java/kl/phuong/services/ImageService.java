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

import kl.phuong.entities.Image;
import kl.phuong.repositories.ImageRepository;

/**
 * @author USER
 *
 */
@Service
public class ImageService {
	@Autowired
	private ImageRepository imageRepository;

	public List<Image> findAll(int PostID) {
		return imageRepository.findAll(PostID);
	}

	public void save(Image entity) {
		imageRepository.save(entity);
	}
	
	public void delete(int ID) {
		imageRepository.delete(ID);
	}
}

/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import kl.phuong.entities.Image;
import kl.phuong.services.ImageService;

/**
 * @author USER
 *
 */
@Controller
public class ImageController {
	@Autowired
	private ImageService t;

	@RequestMapping(path = { "/uploadImage" }, method = { RequestMethod.GET })
	public String upload() {
		return "test/uploadimage";
	}

	@RequestMapping(path = { "/uploadImage" }, method = { RequestMethod.POST })
	public String upload(@RequestParam(name = "file", required = false) List<CommonsMultipartFile> images)
			throws IOException {

		for (CommonsMultipartFile image : images) {
			t.save(new Image(0, image.getOriginalFilename(), image.getBytes(),1));
		}

		return "redirect:showImage";
	}

	@RequestMapping(path = { "/showImage" })
	public String show(Model model) {
		List<Image> images = t.findAll(1);
		model.addAttribute("images", images);
		return "test/showimage";
	}
	
	@RequestMapping(path = { "/map" })
	public String map() {
		
		return "test/map";
	}
}

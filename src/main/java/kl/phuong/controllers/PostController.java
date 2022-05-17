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

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import kl.phuong.entities.Filter;
import kl.phuong.entities.Image;
import kl.phuong.entities.NguoiDung;
import kl.phuong.entities.Post;
import kl.phuong.services.ImageService;
import kl.phuong.services.PostService;

/**
 * @author USER
 *
 */
@Controller
public class PostController {
	@Autowired
	private PostService postService;

	@Autowired
	private ImageService imageService;

	@RequestMapping(path = { "/qltin" }, method = { RequestMethod.GET })
	public String qltin(Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:login";
		}
		model.addAttribute("listTin", postService.findAll(((NguoiDung) session.getAttribute("user")).getUsername()));
		return "QuanLyTin";
	}

	@RequestMapping(path = { "/dangtin" }, method = { RequestMethod.GET })
	public String dangtin(Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:login";
		}
		model.addAttribute("tinmoi", new Post());
		return "DangTin";
	}

	@RequestMapping(path = { "/dangtin" }, method = { RequestMethod.POST })
	public String dangtin(@ModelAttribute(name = "tinmoi") Post tinmoi, HttpSession session,
			@RequestParam(name = "file", required = false) List<CommonsMultipartFile> images) throws IOException {
		if (session.getAttribute("user") == null) {
			return "redirect:login";
		}

		tinmoi.setUsername(((NguoiDung) session.getAttribute("user")).getUsername());
		int PostID = postService.save(tinmoi);

		for (CommonsMultipartFile image : images) {
			imageService.save(new Image(0, image.getOriginalFilename(), image.getBytes(), PostID));
		}

		return "redirect:qltin";
	}

	@RequestMapping(path = { "/listphongtro" }, method = { RequestMethod.GET })
	public String listphongtro(Model model) {
		model.addAttribute("listphongtro", postService.findByChuyenMuc("tro"));
		model.addAttribute("filter", new Filter());
		return "ListPhongTro";
	}

	@RequestMapping(path = { "/listphongtro" }, method = { RequestMethod.POST })
	public String listphongtro(Model model, @ModelAttribute(name = "filter") Filter filter) {
		model.addAttribute("listphongtro", postService.filter("tro", filter));
		return "ListPhongTro";
	}

	@RequestMapping(path = { "/listnha" }, method = { RequestMethod.GET })
	public String listnha(Model model) {
		model.addAttribute("listnha", postService.findByChuyenMuc("nhanguyencan"));
		model.addAttribute("filter", new Filter());
		return "ListNha";
	}

	@RequestMapping(path = { "/listnha" }, method = { RequestMethod.POST })
	public String listnha(Model model, @ModelAttribute(name = "filter") Filter filter) {
		model.addAttribute("listnha", postService.filter("nhanguyencan", filter));
		return "ListNha";
	}

	@RequestMapping(path = { "/delete/{PostID}" })
	public String delete(Model model, @PathVariable(name = "PostID") int PostID) {
		postService.delete(PostID);
		return "redirect:/qltin";
	}

	@RequestMapping(path = { "/detail/{PostID}" })
	public String detail(Model model, @PathVariable(name = "PostID") int PostID) {

		Post p = postService.findById(PostID);
		p.setImages(imageService.findAll(PostID));
		model.addAttribute("post", p);
		return "ChiTiet";
	}

	@RequestMapping(path = { "/update/{PostID}" }, method = { RequestMethod.GET })
	public String update(Model model, @PathVariable(name = "PostID") int PostID, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/login";
		}
		model.addAttribute("postUpdate", postService.findById(PostID));
		model.addAttribute("images", imageService.findAll(PostID));
		return "CapNhat";
	}

	@RequestMapping(path = { "/update/{PostID}" }, method = { RequestMethod.POST })
	public String update(@ModelAttribute(name = "postUpdate") Post post, @PathVariable(name = "PostID") int PostID,
			HttpSession session, @RequestParam(name = "removedImages") String removedImages, 
			@RequestParam(name = "file", required = false) List<CommonsMultipartFile> images) {
		if (session.getAttribute("user") == null) {
			return "redirect:/login";
		}
		if(!removedImages.equals(""))
		{
			String[] ids = removedImages.split(",");
			for(String id: ids)
			{
					imageService.delete(Integer.parseInt(id));
			}
		}
		for (CommonsMultipartFile image : images) {
			if(!image.getOriginalFilename().equals(""))
			{
				imageService.save(new Image(0, image.getOriginalFilename(), image.getBytes(), PostID));
			}
		}
		post.setPostID(PostID);
		post.setUsername(((NguoiDung) session.getAttribute("user")).getUsername());
		postService.update(post);
		return "redirect:/qltin";
	}

	@RequestMapping(path = { "/lancan" })
	public String lancan(Model model) {
		
		model.addAttribute("list", postService.findAll());
		return "TimKiemLanCan";
	}
	
}

/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kl.phuong.entities.NguoiDung;
import kl.phuong.services.UserService;

/**
 * @author USER
 *
 */
@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(path = { "/login" }, method = { RequestMethod.GET })
	public String login() {
		return "Login";
	}
	@RequestMapping(path = { "/login" }, method = { RequestMethod.POST })
	public String login(@RequestParam(name = "Username") String Username,
			@RequestParam(name = "Password") String Password, HttpSession session, Model model) {
		if(userService.isNguoiDung(Username, Password)) {
			session.setAttribute("user", userService.findById(Username));
			return "redirect:home";
		}
		else
		{
			model.addAttribute("loginFail", "Tài khoản hoặc mật khẩu không đúng!");
			return "Login";
		}
	}
	
	
	@RequestMapping(path = { "/logout" }, method = { RequestMethod.GET })
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:login";
	}

	@RequestMapping(path = { "/home" })
	public String home() {
		return "Home";
	}
	
	@RequestMapping(path = { "/register" }, method = { RequestMethod.GET })
	public String register(Model model) {
		model.addAttribute("NewUser", new NguoiDung());
		return "DangKy";
	}
	@RequestMapping(path = { "/register" }, method = { RequestMethod.POST })
	public String register(@ModelAttribute(name = "NewUser") NguoiDung NewUser, Model model) {
		if(userService.findById(NewUser.getUsername()) != null)
		{
			model.addAttribute("Usernamedatontai", "Tên đang nhập đã tồn tại!");
			return "DangKy";
		}
		userService.save(NewUser);
		return "redirect:login";
	}
	
	@RequestMapping(path = { "/profile" }, method = { RequestMethod.GET })
	public String profile(Model model, HttpSession session) {
		if(session.getAttribute("user")==null)
		{
			return "redirect:login";
		}
		model.addAttribute("currentUser", (NguoiDung)session.getAttribute("user"));
		return "Profile";
	}
	@RequestMapping(path = { "/profile" }, method = { RequestMethod.POST })
	public String profile(@ModelAttribute(name = "currentUser") NguoiDung currentUser, HttpSession session) {
		if(session.getAttribute("user")==null)
		{
			return "redirect:login";
		}
		currentUser.setPassword(((NguoiDung)session.getAttribute("user")).getPassword());
		userService.update(currentUser);
		session.setAttribute("user", currentUser);
		return "Profile";
	}
	
}

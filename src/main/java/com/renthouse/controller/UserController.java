package com.renthouse.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renthouse.entities.Admin;
import com.renthouse.entities.User;
import com.renthouse.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/regist")
	public String Regist(User user, HttpSession session) {
		userService.insertUser(user);
		session.setAttribute("user", user);
		return "jsp/index";
	}

	@ResponseBody
	@RequestMapping("/validate/{username}")
	public int Validate(@PathVariable("username") String username) {
		User user = userService.validaeUser(username);
		if (user == null) {
			return 1;
		} else {
			return 0;
		}
	}

	@ResponseBody
	@RequestMapping("/login")
	public int login(String username, String password, HttpSession session) {
		System.out.println(username + password);
		User user = userService.login(username, password);
		session.setAttribute("user", user);
		if (user == null) {
			return 0;
		} else {
			return 1;
		}

	}

	@ResponseBody
	@RequestMapping("/adminlogin")
	public int admin_login(String adminname, String password) {
		Admin admin = userService.admin_login(adminname, password);
		if (admin != null) {
			return 1;
		}
		return 0;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "jsp/loginregist";
	}

	@RequestMapping("/loginregist")
	public String loginregist() {
		return "jsp/loginregist";
	}

	@RequestMapping("/adminindex")
	public String adminimain() {
		return "admin_jsp/index";
	}

	@RequestMapping("/index")
	public String main() {
		return "jsp/index";
	}
}

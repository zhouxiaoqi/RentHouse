package com.renthouse.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renthouse.entities.User;
import com.renthouse.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/regist")
	public String Regist(User user,HttpSession session){
		userService.insertUser(user);
		session.setAttribute("user", user);
		return "jsp/index";
	}
	
	@ResponseBody
	@RequestMapping("/validate/{username}")
	public int Validate(@PathVariable("username") String username){
		User user = userService.validaeUser(username);
		if(user == null){
			return 1;
		}else{
			return 0;
		}
	}
}

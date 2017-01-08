package com.renthouse.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renthouse.entities.User;
import com.renthouse.entities.WantRent;
import com.renthouse.service.ReleaseWantRentService;

@RequestMapping("/releasewantrent")
@Controller
public class ReleaseWantRentController {
	
	@Autowired
	private ReleaseWantRentService releaseWantRentService;
	
	@Autowired
	private HttpSession session;
	
	
	/**
	 * 判断是否登陆
	 * @return
	 */
	private  boolean loginornot(){
		User user = (User) session.getAttribute("user");
		if(user != null){
			return true;
		}
		return false;
	}
	
	@RequestMapping("/wantrent")
	public String wantrent(){
		return "jsp/wantrent";
	}
	
	@RequestMapping("/gotowantrent")
	public String gotowantrent(){
		if(loginornot()){
			return "jsp/releasewantrent";
		}
		return "jsp/loginregist";
	}
	
	@RequestMapping("/insertwantrent")
	public String insertwantrent(WantRent wantRent){
		User user = (User) session.getAttribute("user");
		wantRent.setUser(user);
		System.out.println(wantRent);
		int result = releaseWantRentService.insertWantRent(wantRent);
		return "jsp/successPage";
	}

}

package com.renthouse.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		releaseWantRentService.insertWantRent(wantRent);
		return "jsp/successPage";
	}
	
	@ResponseBody
	@RequestMapping("/getallwantrent")
	public List<WantRent> getAllWantRent(){
		List<WantRent> wantRents = releaseWantRentService.getAllWantRent();
		return wantRents;
	}
	
	@ResponseBody
	@RequestMapping("/admingetwantrent")
	public List<WantRent> adminGetWantRent(){
		List<WantRent> wantRents = releaseWantRentService.adminGetAllWantRent();
		return wantRents;
	}
	
	
	@ResponseBody
	@RequestMapping("/updateshow/{id}")
	public String updateShow(@PathVariable("id") int wid){
		int result = releaseWantRentService.update_show(wid);
		if(result == 1){
			return "操作成功";
		}
		return "操作失败";
	}
	
	@ResponseBody
	@RequestMapping("/updatehide/{id}")
	public String updateHide(@PathVariable("id") int wid){
		int result = releaseWantRentService.update_hide(wid);
		if(result == 1){
			return "操作成功";
		}
		return "操作失败";
	}

}

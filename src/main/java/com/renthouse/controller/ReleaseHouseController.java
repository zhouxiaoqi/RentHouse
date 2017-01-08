package com.renthouse.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.renthouse.entities.ReleaseHouse;
import com.renthouse.entities.User;
import com.renthouse.service.ReleaseHouseService;
import com.renthouse.util.DateUtil;

@RequestMapping("/releasehouse")
@Controller
public class ReleaseHouseController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ReleaseHouseService releaseHouseService;
	
	
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
	
	@RequestMapping("/gotoinserthouse")
	public String gotoinserthouse(){
		if(loginornot()){
			return "jsp/releasehouse";
		}
		return "jsp/loginregist";
	}

	@RequestMapping("/inserthouse")
	public String insertHouse(ReleaseHouse releaseHouse, @RequestParam("files") MultipartFile[] files) {
		User user = (User) session.getAttribute("user");
		releaseHouse.setUser(user);
		releaseHouse.setPicture1(saveFile(files[0]));
		releaseHouse.setPicture2(saveFile(files[1]));
		releaseHouse.setPicture3(saveFile(files[2]));
		releaseHouse.setPicture4(saveFile(files[3]));
		releaseHouse.setPicture5(saveFile(files[4]));
		//System.out.println(releaseHouse);
		releaseHouseService.insertHouse(releaseHouse);
		return "jsp/successPage";
	}

	private String saveFile(MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				String date = DateUtil.formatDate(new Date(), "yyyy-MM-dd hh:mm:ss");
				String filepath = "/users/zhouqi/desktop" + "/learn/" + date + file.getOriginalFilename();
				file.transferTo(new File(filepath));
				return filepath;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

}

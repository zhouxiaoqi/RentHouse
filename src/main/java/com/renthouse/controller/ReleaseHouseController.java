package com.renthouse.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping("/gotoinserthouse")
	public String gotoinserthouse() {
		if (loginornot()) {
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
		// System.out.println(releaseHouse);
		releaseHouseService.insertHouse(releaseHouse);
		return "jsp/successPage";
	}

	@ResponseBody
	@RequestMapping("/getallhouse")
	public List<ReleaseHouse> getAllHouse() {
		List<ReleaseHouse> releaseHouses = releaseHouseService.getAllHouse();
		for (ReleaseHouse releaseHouse : releaseHouses) {
			System.out.println(releaseHouse);
		}
		return releaseHouses;
	}
	
	@ResponseBody
	@RequestMapping("/admingetallhouse")
	public List<ReleaseHouse> adminGetAllHouse() {
		List<ReleaseHouse> releaseHouses = releaseHouseService.adminGetAllHouse();
		for (ReleaseHouse releaseHouse : releaseHouses) {
			System.out.println(releaseHouse);
		}
		return releaseHouses;
	}
	
	@RequestMapping("/getsinglehouse/{rid}")
	public String getSingleHouse(@PathVariable("rid") int rid){
		ReleaseHouse releaseHouse = releaseHouseService.getSingleHouse(rid);
		session.setAttribute("singlehouse", releaseHouse);
		return "jsp/housedetail";
	}

	@ResponseBody
	@RequestMapping("/updateshow/{id}")
	public String updateShow(@PathVariable("id") int rid){
		int result = releaseHouseService.update_show(rid);
		if(result == 1){
			return "操作成功";
		}
		return "操作失败";
	}
	
	@ResponseBody
	@RequestMapping("/updatehide/{id}")
	public String updateHide(@PathVariable("id") int rid){
		int result = releaseHouseService.update_hide(rid);
		if(result == 1){
			return "操作成功";
		}
		return "操作失败";
	}
	
	@ResponseBody
	@RequestMapping("/gethousesbyprovince/{id}")
	public List<ReleaseHouse> getHousesByProvince(@PathVariable("id") int pid){
		return releaseHouseService.getHousesByProvince(pid);
	}
	
	@ResponseBody
	@RequestMapping("/gethousesbycity/{id}")
	public List<ReleaseHouse> getHousesByCity(@PathVariable("id") int cid){
		return releaseHouseService.getHousesByCity(cid);
	}
	
	@ResponseBody
	@RequestMapping("/gethousesbyprice/{startprice}/{endprice}")
	public List<ReleaseHouse> getHousesByPrice(@PathVariable("startprice") double startprice,@PathVariable("endprice") double endprice){
		return releaseHouseService.getHousesByPrice(startprice, endprice);
	}
	
	@ResponseBody
	@RequestMapping("/gethousesbyroom/{room}")
	public List<ReleaseHouse> getHousesByRoom(@PathVariable("room") int room){
		return releaseHouseService.getHousesByRoom(room);
	}
	/**
	 * 上传图片
	 * 
	 * @param file
	 * @return
	 */
	private String saveFile(MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				String date = DateUtil.formatDate(new Date(), "yyyy-MM-dd hh:mm:ss");
				String filepath = "/Users/zhouqi/Desktop/zhouqiJava/RentHouse/src/main/webapp/upload/" + date
						+ file.getOriginalFilename();
				String realpath = "upload/" + date + file.getOriginalFilename();
				file.transferTo(new File(filepath));
				return realpath;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 判断是否登陆
	 * 
	 * @return
	 */
	private boolean loginornot() {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			return true;
		}
		return false;
	}

}

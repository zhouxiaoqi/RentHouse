package com.renthouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renthouse.entities.Province;
import com.renthouse.service.ProvinceService;

@RequestMapping("/province")
@Controller
public class ProviceController {

	@Autowired
	private ProvinceService provinceService;
	
	
	@RequestMapping("/getallprovince")
	@ResponseBody
	public List<Province> getAllProvince(){
		List<Province>  provinces = provinceService.getAllProvince();
		for(Province province : provinces){
			System.out.println(province);
		}
		return provinces;
	}
}

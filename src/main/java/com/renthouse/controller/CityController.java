package com.renthouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renthouse.entities.City;
import com.renthouse.service.CityService;

@RequestMapping("/city")
@Controller
public class CityController {
	
	@Autowired
	private CityService cityService;
	
	@ResponseBody
	@RequestMapping("/getthiscities/{pid}")
	public List<City> getthiscities(@PathVariable("pid") int pid){
		List<City> cities = cityService.gettheCities(pid);
		for(City city : cities){
			System.out.println(city);
		}
		return cities;
	}

}

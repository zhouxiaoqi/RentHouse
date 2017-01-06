package com.renthouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renthouse.dao.CityDao;
import com.renthouse.entities.City;
import com.renthouse.service.CityService;

@Service("cityService")
public class CityServiceimpl implements CityService{

	@Autowired
	private CityDao cityDao;
	
	@Override
	public List<City> gettheCities(int pid) {
		return cityDao.gettheCities(pid);
	}
	
	

}

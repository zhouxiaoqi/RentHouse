package com.renthouse.service;

import java.util.List;

import com.renthouse.entities.City;

public interface CityService {
	
	/**
	 * 根据省份id取出此省份所有的城市
	 * @param pid:省份id
	 * @return
	 */
	List<City> gettheCities(int pid);

}

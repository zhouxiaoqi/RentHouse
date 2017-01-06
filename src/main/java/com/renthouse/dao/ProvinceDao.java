package com.renthouse.dao;

import java.util.List;

import com.renthouse.entities.Province;

public interface ProvinceDao {
	
	// 得到所有的省份
	List<Province> getAllProvince();
}

package com.renthouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renthouse.dao.ProvinceDao;
import com.renthouse.entities.Province;
import com.renthouse.service.ProvinceService;

@Service("provinceService")
public class ProvinceServiceImpl implements ProvinceService{
	
	@Autowired
	private ProvinceDao provincedao;

	
	/**
	 * 得到所有的省份
	 */
	@Override
	public List<Province> getAllProvince() {
		return provincedao.getAllProvince();
	}

	
}

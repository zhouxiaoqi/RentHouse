package com.renthouse.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renthouse.dao.ReleaseHouseDao;
import com.renthouse.entities.ReleaseHouse;
import com.renthouse.service.ReleaseHouseService;

@Service("releaseHouseService")
public class ReleaseHouseServiceImpl implements ReleaseHouseService{
	
	@Autowired
	private ReleaseHouseDao releaseHouseDao;

	@Override
	public int insertHouse(ReleaseHouse releaseHouse) {
		return releaseHouseDao.insertHouse(releaseHouse);
	}
	
	
}

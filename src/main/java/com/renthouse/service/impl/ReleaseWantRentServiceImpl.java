package com.renthouse.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renthouse.dao.ReleaseWantRentDao;
import com.renthouse.entities.WantRent;
import com.renthouse.service.ReleaseWantRentService;

@Service("releaseWantRentService")
public class ReleaseWantRentServiceImpl implements ReleaseWantRentService{
	
	@Autowired
	private ReleaseWantRentDao releaseWantRentDao;

	@Override
	public int insertWantRent(WantRent wantRent) {
		return releaseWantRentDao.insertWantRent(wantRent);
	}

	
}

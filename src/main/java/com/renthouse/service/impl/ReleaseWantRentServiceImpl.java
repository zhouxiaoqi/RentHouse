package com.renthouse.service.impl;

import java.util.List;

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

	@Override
	public List<WantRent> getAllWantRent() {
		return releaseWantRentDao.getAllWantRent();
	}

	@Override
	public List<WantRent> adminGetAllWantRent() {
		return releaseWantRentDao.adminGetAllWantRent();
	}

	@Override
	public int update_show(int wid) {
		return releaseWantRentDao.update_show(wid);
	}

	@Override
	public int update_hide(int wid) {
		return releaseWantRentDao.update_hide(wid);
	}

	
}

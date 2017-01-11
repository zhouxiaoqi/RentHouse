package com.renthouse.service.impl;

import java.util.List;

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

	@Override
	public List<ReleaseHouse> getAllHouse() {
		return releaseHouseDao.getAllHouse();
	}

	@Override
	public List<ReleaseHouse> adminGetAllHouse() {
		return releaseHouseDao.adminGetAllHouse();
	}

	@Override
	public int update_show(int rid) {
		return releaseHouseDao.update_show(rid);
	}

	@Override
	public int update_hide(int rid) {
		return releaseHouseDao.update_hide(rid);
	}

	@Override
	public ReleaseHouse getSingleHouse(int rid) {
		return releaseHouseDao.getSingleHouse(rid);
	}

	@Override
	public List<ReleaseHouse> getHousesByProvince(int pid) {
		return releaseHouseDao.getHousesByProvince(pid);
	}

	@Override
	public List<ReleaseHouse> getHousesByCity(int cid) {
		return releaseHouseDao.getHousesByCity(cid);
	}

	@Override
	public List<ReleaseHouse> getHousesByPrice(double startprice, double endprice) {
		return releaseHouseDao.getHousesByPrice(startprice, endprice);
	}

	@Override
	public List<ReleaseHouse> getHousesByRoom(int room) {
		return releaseHouseDao.getHousesByRoom(room);
	}

	
	
	
}

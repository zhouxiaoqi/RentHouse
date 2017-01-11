package com.renthouse.service;

import java.util.List;

import com.renthouse.entities.ReleaseHouse;

public interface ReleaseHouseService {

	/**
	 * 发布房源
	 * 
	 * @param releaseHouse
	 * @return
	 */
	int insertHouse(ReleaseHouse releaseHouse);

	/**
	 * 得到上线的房源
	 * 
	 * @return
	 */
	List<ReleaseHouse> getAllHouse();
	
	/**
	 * 得到房源详情页
	 * @return
	 */
	ReleaseHouse getSingleHouse(int rid);
	
	/**
	 * 管理员后台需要获取所有的房源
	 * @return
	 */
	List<ReleaseHouse> adminGetAllHouse();
	
	/**
	 * 上架房源
	 * @return
	 */
	int update_show(int rid);
	
	/**
	 * 下架房源
	 * @return
	 */
	int update_hide(int rid);
	
	/**
	 * 得到该省份的房源
	 * @param pid
	 * @return
	 */
	List<ReleaseHouse> getHousesByProvince(int pid);
	
	/**
	 * 得到该城市的房源
	 * @param cid
	 * @return
	 */
	List<ReleaseHouse> getHousesByCity(int cid);
	
	/**
	 * 根据租金范围得到房源
	 * @param price
	 * @return
	 */
	List<ReleaseHouse> getHousesByPrice(double startprice,double endprice);
	
	/**
	 * 根据房子类型得到房源
	 * @param room
	 * @return
	 */
	List<ReleaseHouse> getHousesByRoom(int room);

}

package com.renthouse.dao;

import com.renthouse.entities.ReleaseHouse;

public interface ReleaseHouseDao {

	/**
	 * 发布房源
	 * @param releaseHouse
	 * @return
	 */
	int insertHouse(ReleaseHouse releaseHouse);
}

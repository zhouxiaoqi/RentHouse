package com.renthouse.service;

import com.renthouse.entities.ReleaseHouse;

public interface ReleaseHouseService {
	

	/**
	 * 发布房源
	 * @param releaseHouse
	 * @return
	 */
	int insertHouse(ReleaseHouse releaseHouse);

}

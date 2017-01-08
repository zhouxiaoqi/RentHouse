package com.renthouse.service;

import com.renthouse.entities.WantRent;

public interface ReleaseWantRentService {

	/**
	 * 发布求租信息
	 * 
	 * @param wantRent
	 * @return
	 */
	int insertWantRent(WantRent wantRent);
}

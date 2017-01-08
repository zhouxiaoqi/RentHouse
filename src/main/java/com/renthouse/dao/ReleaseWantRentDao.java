package com.renthouse.dao;

import com.renthouse.entities.WantRent;

public interface ReleaseWantRentDao {
	
	/**
	 * 发布求租信息
	 * @param wantRent
	 * @return
	 */
	int insertWantRent(WantRent wantRent);

}

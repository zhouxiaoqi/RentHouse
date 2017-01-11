package com.renthouse.dao;

import java.util.List;

import com.renthouse.entities.WantRent;

public interface ReleaseWantRentDao {
	
	/**
	 * 发布求租信息
	 * @param wantRent
	 * @return
	 */
	int insertWantRent(WantRent wantRent);
	
	
	/**
	 * 得到上线了的求租信息
	 * @return
	 */
	List<WantRent> getAllWantRent();
	
	
	/**
	 * 管理员后台获取所有求租信息
	 * @return
	 */
	List<WantRent> adminGetAllWantRent();
	
	/**
	 * 上架求租信息
	 * @return
	 */
	int update_show(int wid);
	
	/**
	 * 下架求租信息
	 * @return
	 */
	int update_hide(int wid);
	

}

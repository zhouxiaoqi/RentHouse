package com.renthouse.service;

import com.renthouse.entities.Admin;
import com.renthouse.entities.User;

public interface UserService {
	/**
	 * 注册并返回当前id
	 * 
	 * @param user
	 * @return
	 */
	int insertUser(User user);

	/**
	 * 验证该用户名是否可用
	 * 
	 * @param username
	 * @return
	 */
	User validaeUser(String username);

	/**
	 * 登陆
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	User login(String username, String password);

	/**
	 * 管理员登陆
	 * 
	 * @param adminname
	 * @param password
	 * @return
	 */
	Admin admin_login(String adminname, String password);
}

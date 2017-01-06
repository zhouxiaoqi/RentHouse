package com.renthouse.service;

import com.renthouse.entities.User;

public interface UserService {
	/**
	 * 注册并返回当前id
	 * @param user
	 * @return
	 */
	int insertUser(User user);
	
	/**
	 * 验证该用户名是否可用
	 * @param username
	 * @return
	 */
	User validaeUser(String username);
}

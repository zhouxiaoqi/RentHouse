package com.renthouse.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renthouse.dao.UserDao;
import com.renthouse.entities.Admin;
import com.renthouse.entities.User;
import com.renthouse.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	

	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public User validaeUser(String username) {
		return userDao.validaeUser(username);
	}

	@Override
	public User login(String username, String password) {
		return userDao.login(username, password);
	}

	@Override
	public Admin admin_login(String adminname, String password) {
		return userDao.admin_login(adminname, password);
	}

	
}

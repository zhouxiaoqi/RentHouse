package com.renthouse.entities;

/**
 * 摘要：用户表
 * @author zhouqi
 *
 */

public class User {
	private Integer uid;				
	private String username;			//用户名
	private String password;			//密码
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + "]";
	}
	public User(Integer uid, String username, String password) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
}

package com.renthouse.entities;

/**
 * 摘要：管理员
 * @author zhouqi
 *
 */
public class Admin {
	
	private Integer aid;
	private String adminname;
	private String password;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", adminname=" + adminname + ", password=" + password + "]";
	}
	public Admin(Integer aid, String adminname, String password) {
		super();
		this.aid = aid;
		this.adminname = adminname;
		this.password = password;
	}
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}

}

package com.renthouse.entities;

/**
 * 摘要：省份/直辖市
 * @author zhouqi
 *
 */
public class Province {
	private Integer pid;
	private String pname;	// 省份名
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	@Override
	public String toString() {
		return "Province [pid=" + pid + ", pname=" + pname + "]";
	}
	public Province(Integer pid, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
	}
	
	public Province() {
		// TODO Auto-generated constructor stub
	}
}

package com.renthouse.entities;

/**
 * 摘要：城市/区
 * @author zhouqi
 *
 */
public class City {
	private Integer cid;
	private String cname; // 城市名/区名
	private Province province; //省份
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	@Override
	public String toString() {
		return "City [cid=" + cid + ", cname=" + cname + ", province=" + province + "]";
	}
	public City(Integer cid, String cname, Province province) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.province = province;
	}
	public City() {
		// TODO Auto-generated constructor stub
	}
	
}

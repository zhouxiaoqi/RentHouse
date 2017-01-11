package com.renthouse.entities;
/**
 * 求租信息
 * @author zhouqi
 *
 */
public class WantRent {

	private Integer wid;
	private Province province; // 省份
	private City city; // 城市
	private int room; // 室
	private int office;//厅
	private String renttype; // 租赁方式
	private String renovation; // 装修风格
	private String orientation; // 朝向
	private String price; // 期望租金
	private String realname; // 真实姓名
	private String telnum; // 联系方式
	private User user; // 发布求租信息的用户
	private int showorhide; // 下架或上线
	public Integer getWid() {
		return wid;
	}
	public void setWid(Integer wid) {
		this.wid = wid;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}
	public int getOffice() {
		return office;
	}
	public void setOffice(int office) {
		this.office = office;
	}
	public String getRenttype() {
		return renttype;
	}
	public void setRenttype(String renttype) {
		this.renttype = renttype;
	}
	public String getRenovation() {
		return renovation;
	}
	public void setRenovation(String renovation) {
		this.renovation = renovation;
	}
	public String getOrientation() {
		return orientation;
	}
	public void setOrientation(String orientation) {
		this.orientation = orientation;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getShoworhide() {
		return showorhide;
	}
	public void setShoworhide(int showorhide) {
		this.showorhide = showorhide;
	}
	@Override
	public String toString() {
		return "WantRent [wid=" + wid + ", province=" + province + ", city=" + city + ", room=" + room + ", office="
				+ office + ", renttype=" + renttype + ", renovation=" + renovation + ", orientation=" + orientation
				+ ", price=" + price + ", realname=" + realname + ", telnum=" + telnum + ", user=" + user
				+ ", showorhide=" + showorhide + "]";
	}
	public WantRent(Integer wid, Province province, City city, int room, int office, String renttype, String renovation,
			String orientation, String price, String realname, String telnum, User user, int showorhide) {
		super();
		this.wid = wid;
		this.province = province;
		this.city = city;
		this.room = room;
		this.office = office;
		this.renttype = renttype;
		this.renovation = renovation;
		this.orientation = orientation;
		this.price = price;
		this.realname = realname;
		this.telnum = telnum;
		this.user = user;
		this.showorhide = showorhide;
	}
	public WantRent() {
		// TODO Auto-generated constructor stub
	}
}

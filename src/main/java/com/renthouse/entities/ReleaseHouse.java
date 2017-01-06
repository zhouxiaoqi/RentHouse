package com.renthouse.entities;

/**
 * 摘要：发布房源信息
 * 
 * @author zhouqi
 *
 */
public class ReleaseHouse {

	private Integer rid;
	private Province province; // 省份
	private City city; // 城市
	private String detailaddress; // 详细地址
	private double area; // 房源面积
	private int room; // 室
	private int office; // 厅
	private double price; // 租金
	private int layer; // 楼层
	private int totallayer; // 总楼层
	private String housetype; // 房源的户型
	private String renovation; // 装修风格
	private String orientation; // 朝向
	private String usersaid; // 留言
	private String picture1; // 房源图1
	private String picture2; // 房源图2
	private String picture3; // 房源图3
	private String picture4; // 房源图4
	private String picture5; // 房源图5
	private String date; // 房源信息有效时间
	private String telnum; // 联系人电话
	private String realname; // 联系人姓名
	private User user; // 谁发布的房源
	private int showorhide; // 下架或上线
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
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
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getLayer() {
		return layer;
	}
	public void setLayer(int layer) {
		this.layer = layer;
	}
	public int getTotallayer() {
		return totallayer;
	}
	public void setTotallayer(int totallayer) {
		this.totallayer = totallayer;
	}
	public String getHousetype() {
		return housetype;
	}
	public void setHousetype(String housetype) {
		this.housetype = housetype;
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
	public String getUsersaid() {
		return usersaid;
	}
	public void setUsersaid(String usersaid) {
		this.usersaid = usersaid;
	}
	public String getPicture1() {
		return picture1;
	}
	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}
	public String getPicture2() {
		return picture2;
	}
	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}
	public String getPicture3() {
		return picture3;
	}
	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}
	public String getPicture4() {
		return picture4;
	}
	public void setPicture4(String picture4) {
		this.picture4 = picture4;
	}
	public String getPicture5() {
		return picture5;
	}
	public void setPicture5(String picture5) {
		this.picture5 = picture5;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
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
		return "ReleaseHouse [rid=" + rid + ", province=" + province + ", city=" + city + ", detailaddress="
				+ detailaddress + ", area=" + area + ", room=" + room + ", office=" + office + ", price=" + price
				+ ", layer=" + layer + ", totallayer=" + totallayer + ", housetype=" + housetype + ", renovation="
				+ renovation + ", orientation=" + orientation + ", usersaid=" + usersaid + ", picture1=" + picture1
				+ ", picture2=" + picture2 + ", picture3=" + picture3 + ", picture4=" + picture4 + ", picture5="
				+ picture5 + ", date=" + date + ", telnum=" + telnum + ", realname=" + realname + ", user=" + user
				+ ", showorhide=" + showorhide + "]";
	}
	public ReleaseHouse(Integer rid, Province province, City city, String detailaddress, double area, int room,
			int office, double price, int layer, int totallayer, String housetype, String renovation,
			String orientation, String usersaid, String picture1, String picture2, String picture3, String picture4,
			String picture5, String date, String telnum, String realname, User user, int showorhide) {
		super();
		this.rid = rid;
		this.province = province;
		this.city = city;
		this.detailaddress = detailaddress;
		this.area = area;
		this.room = room;
		this.office = office;
		this.price = price;
		this.layer = layer;
		this.totallayer = totallayer;
		this.housetype = housetype;
		this.renovation = renovation;
		this.orientation = orientation;
		this.usersaid = usersaid;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.picture4 = picture4;
		this.picture5 = picture5;
		this.date = date;
		this.telnum = telnum;
		this.realname = realname;
		this.user = user;
		this.showorhide = showorhide;
	}
	public ReleaseHouse() {
		// TODO Auto-generated constructor stub
	}
	
}

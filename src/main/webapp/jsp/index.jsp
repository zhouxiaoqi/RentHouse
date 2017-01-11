<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>宜客租房</title>
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/swiper/swiper.jquery.min.js"></script>
<script src="static/bootstrap/bootstrap.min.js"></script>
<script src="static/vue/vue.js"></script>
<script src="static/vue/vue-resource.js"></script>
<script src="static/js/index.js"></script>
<link rel="stylesheet" href="static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="static/swiper/swiper.min.css" />
<link rel="stylesheet" href="static/simplegrid/simplegrid.css" />
<link rel="stylesheet" href="static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="static/css/index.css" />
</head>

<body>

	<jsp:include page="../common/header.jsp" />

	<!--banner-->
	<div class="grid-fluid ">
		<div class="banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="img-mask">
						<div class="something-tosay">
							<h1>WELCOME &nbsp; &nbsp;TO &nbsp; &nbsp;&nbsp;HERE</h1>
							<p>
								简单找您心所爱，当然是上<q>宜客租房</q>。
							</p>
						</div>
					</div>
					<img src="static/image/banner1.jpg" class=" swiper-slide"
						alt="Image"> <img src="static/image/banner2.jpeg"
						class="swiper-slide" alt="Image"> <img
						src="static/image/banner3.jpeg" class="swiper-slide" alt="Image">
					<img src="static/image/banner4.jpeg" class=" swiper-slide"
						alt="Image">
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
				<div class="swiper-pagination"></div>
			</div>
			<script>
				var mySwiper = new Swiper('.swiper-container', {
					autoplay : 3000,
					effect : 'fade',
					prevButton : '.swiper-button-prev',
					nextButton : '.swiper-button-next',
					pagination : '.swiper-pagination',
					paginationType : 'progress',
					autoplayDisableOnInteraction : false
				});
			</script>
		</div>
	</div>

	<!--middle nav-->
	<div class="grid-fluid ">
		<div class="col-10-12 push-1-12 middle-nav" id="middle-nav">
			<div class="region">
				<div class="region-title">
					<label for="">区域：</label>
				</div>
				<div class="region-content">
					<a v-for="city in cities" style="cursor: pointer;" v-on:click="gethouses(city.cid)">
						{{city.cname}}
					</a>
				</div>
			</div>
			<hr />
			<div class="price">
				<div class="price-title">
					<label for="">租金：</label>
				</div>
				<div class="price-content">
					<a>全部</a> 
					<a @click="gethousebyprice(0,500)">500以下</a> 
					<a @click="gethousebyprice(500,1000)">500-1000</a>
					<a @click="gethousebyprice(1000,2000)">1000-2000</a> 
					<a @click="gethousebyprice(2000,3000)">2000-3000</a> 
					<a @click="gethousebyprice(3000,5000)">3000-5000</a>
					<a href="#">5000以上</a>
				</div>
			</div>
			<hr />
			<div class="type">
				<div class="type-title">
					<label for="">房型：</label>
				</div>
				<div class="type-content">
					<a @click="gethousebyroom(1)">一室</a> 
					<a @click="gethousebyroom(2)">二室</a> 
					<a @click="gethousebyroom(3)">三室</a> 
					<a @click="gethousebyroom(4)">四室</a> 
					<a href="#">五室及以上</a>
				</div>
			</div>
			<hr />
			<div class="more">
				<div class="more-title">
					<label for="">组合查询：</label>
				</div>
				<div class="more-content">
					<form action="" method="">
						<div class="select-group">
							<select name="" class="form-control input-sm">
								<option value="">区域</option>
								<option value="">巴南</option>
								<option value="">江北</option>
								<option value="">南岸</option>
							</select> <select name="" class="form-control  input-sm">
								<option value="">租金</option>
								<option value="">500以下</option>
								<option value="">500-1000</option>
								<option value="">1000-2000</option>
								<option value="">2000-3000</option>
								<option value="">3000-5000</option>
								<option value="">5000以上</option>
							</select> <select name="" class="form-control input-sm">
								<option value="">房型</option>
								<option value="">一室</option>
								<option value="">二室</option>
								<option value="">三室</option>
								<option value="">四室</option>
								<option value="">五室及以上</option>
							</select>
							<button class="btn btn-success  btn-sm">查询</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="grid-fluid">
		<div class="col-10-12 push-1-12 house-list" id="housecontent">
			<div class="col-10-12">
				<div class="tip">
					<span> 为您找到以下 <strong>租房</strong> 
					</span>
				</div>
				<div class="house" v-for="house in houses">
					<div class="col-3-12">
						<div class="house-img">
							<img v-bind:src="house.picture1" alt="" />
						</div>
					</div>
					<div class="col-9-12">
						<div class="house-title">
							<a v-bind:href="'releasehouse/getsinglehouse/'+ house.rid + '.do'" target="_blank">
								<h4>{{house.usersaid}}</h4>
							</a>
						</div>
						<div class="house-info">
							<p>
								{{house.room}}室{{house.office}}厅 <span>|</span> {{house.renovation}} <span>|</span> {{house.layer}}/{{house.totallayer}}层
							</p>
						</div>
						<div class="house-place">
							<span>{{house.detailaddress}}</span> &nbsp;
						</div>
						<div class="house-price">
							<span>￥ {{house.price}}/月</span>
						</div>
						<div class="user-name">
							<span>{{house.realname}}</span>
						</div>
					</div>
				</div>
			</div>


			<div class="col-2-12">
				<div class="location" id="location">
					<h5>
						当前城市：<strong>{{cityname}}</strong>
					</h5>
					<button class="btn btn-success" v-on:click="togglecity">切换城市</button>
				</div>
			</div>

			<!--选择城市遮罩层-->
			<div class="mask" v-show="togglemask" id="mask">
				<div class="grid-fluid">
					<div class="col-4-12 push-4-12">
						<div class="city-list" style="border: 1px solid;">
							<div class="northeast">
								<div class="northeast-title">
									<label for=""> 以下城市：</label>
								</div>
								<div class="cities-link">
									<a v-for="province in provinces" v-on:click="getcities(province.pid,province.pname)" style="cursor: pointer;"><!-- v-bind:href="'city/getthiscities/'+province.pid+'.do'" -->
									{{province.pname}}
									</a>
								</div>
							</div>
							<hr />
							<div class="close-btn">
								<button class="btn btn-danger" v-on:click="closemask">
									关闭窗口</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="../common/footer.jsp" />
</body>

</html>
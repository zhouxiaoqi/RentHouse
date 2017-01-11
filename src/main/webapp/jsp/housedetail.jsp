<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>租房详情---</title>
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/bootstrap/bootstrap.min.js"></script>
<script src="static/swiper/swiper.jquery.min.js"></script>
<script src="static/vue/vue.js"></script>
<link rel="stylesheet" href="static/bootstrap/bootstrap_simple.min.css" />
<link rel="stylesheet" href="static/swiper/swiper.min.css" />
<link rel="stylesheet" href="static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="static/simplegrid/simplegrid.css" />
<link rel="stylesheet" href="static/css/housedetail.css" />
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="grid">
		<div class="house-detail">
			<div class="col-9-12">
				<div class="house-name">
					<h4>${singlehouse.usersaid }</h4>
				</div>
				<div class="houseimg-list">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<img src="${singlehouse.picture1}" class=" swiper-slide"
								alt="Image"> <img src="${singlehouse.picture2}"
								class=" swiper-slide" alt="Image"><img
								src="${singlehouse.picture3}" class=" swiper-slide" alt="Image"><img
								src="${singlehouse.picture4}" class=" swiper-slide" alt="Image"><img
								src="${singlehouse.picture5}" class=" swiper-slide" alt="Image">
						</div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
						<div class="swiper-pagination"></div>
					</div>
					<script>
						var mySwiper = new Swiper('.swiper-container', {
							autoplay : 3000,
							prevButton : '.swiper-button-prev',
							nextButton : '.swiper-button-next',
							pagination : '.swiper-pagination',
							autoplayDisableOnInteraction : false
						});
					</script>
				</div>
				<div class="house-source">
					<div class="title">
						<h4>房源信息</h4>
					</div>
					<div class="house-info">
						<div class="item-all">
							<div class="item-left">
								<dl>
									<dt>装修</dt>
									<dd>
										<span>${singlehouse.renovation}</span>
									</dd>
								</dl>
								<dl>
									<dt>详细地址</dt>
									<dd>
										<span style="padding-left: 20px;">${singlehouse.detailaddress}</span>
									</dd>
								</dl>
								<dl>
									<dt>位置</dt>
									<dd>
										<span>${singlehouse.city.cname }</span>
									</dd>
								</dl>
								<dl>
									<dt>楼层</dt>
									<dd>
										<span>${singlehouse.layer }/${singlehouse.totallayer }</span>
									</dd>
								</dl>
								<dl>
									<dt style="line-height: 40px;">租金</dt>
									<dd class="price">
										<strong>${singlehouse.price}</strong>元/月
									</dd>
								</dl>
							</div>
							<div class="item-right">
								<dl>
									<dt>面积</dt>
									<dd>
										<span>${singlehouse.area} 平米</span>
									</dd>
								</dl>
								<dl>
									<dt>朝向</dt>
									<dd>
										<span>${singlehouse.orientation }</span>
									</dd>
								</dl>
								<dl>
									<dt>户型</dt>
									<dd>
										<span>${singlehouse.room }室${singlehouse.office }厅</span>
									</dd>
								</dl>
								<dl>
									<dt>类型</dt>
									<dd>
										<span>${singlehouse.housetype }</span>
									</dd>
								</dl>
							</div>
						</div>
						<div class="user-said">
							<div class="user-title">
								<label for="">业主说：</label>
							</div>
							<div class="said-content">
								<p>${singlehouse.usersaid }</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3-12">
				<div class="user-action">
					<a href="#" class="btn btn-success"><i class="fa fa-heart-o"></i>&nbsp;收藏</a>
					<a href="#" class="btn btn-danger"><i class="fa fa-warning"></i>&nbsp;举报</a>
				</div>
				<div class="user-info">
					<div class="user-picture">
						<img src="static/image/user_96px.png" alt="" width="100%" />
					</div>
					<div class="user-realname">
						<span>${singlehouse.realname }</span>
					</div>
					<div class="user-telnum">
						<i class="fa fa-mobile fa-2x"></i>&nbsp;&nbsp;
						<span>联系方式:</span>
						<c:choose>
							<c:when test="${user!=null }">
								<span>${singlehouse.telnum }</span>
							</c:when>
							<c:otherwise>
								<span><a href="user/loginregist.do">登陆后查看</a></span>
							</c:otherwise>
						</c:choose>
						
					</div>	
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
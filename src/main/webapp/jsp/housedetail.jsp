<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>租房详情---</title>
<script src="../static/jquery/jquery-3.1.0.min.js"></script>
<script src="../static/bootstrap/bootstrap.min.js"></script>
<script src="../static/swiper/swiper.jquery.min.js"></script>
<script src="../static/vue/vue.js"></script>
<link rel="stylesheet"
	href="../static/bootstrap/bootstrap_simple.min.css" />
<link rel="stylesheet" href="../static/swiper/swiper.min.css" />
<link rel="stylesheet"
	href="../static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="../static/simplegrid/simplegrid.css" />
<link rel="stylesheet" href="../static/css/housedetail.css" />
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<div class="grid">
		<div class="house-detail">
			<div class="col-9-12">
				<div class="house-name">
					<h4>急租，万科提香郡旁，合租单间带卫生间 可煮饭 无</h4>
				</div>
				<div class="houseimg-list">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<img src="../static/image/600x450.jpg" class=" swiper-slide"
								alt="Image"> <img src="../static/image/600x450-2.jpg"
								class="swiper-slide" alt="Image"> <img
								src="../static/image/600x450-3.jpg" class="swiper-slide"
								alt="Image"> <img src="../static/image/600x450-4.jpg"
								class=" swiper-slide" alt="Image"> <img
								src="../static/image/600x450-5.jpg" class=" swiper-slide"
								alt="Image">
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
										<span>精装修</span>
									</dd>
								</dl>
								<dl>
									<dt>租赁方式</dt>
									<dd>
										<span style="padding-left: 20px;">整租</span>
									</dd>
								</dl>
								<dl>
									<dt>所在小区</dt>
									<dd>
										<span style="padding-left: 20px;">瑞丰阁</span>
									</dd>
								</dl>
								<dl>
									<dt>位置</dt>
									<dd>
										<span>长寿区</span>
									</dd>
								</dl>
								<dl>
									<dt style="line-height: 40px;">租金</dt>
									<dd class="price">
										<strong>800</strong>元/月
									</dd>
								</dl>
							</div>
							<div class="item-right">
								<dl>
									<dt>面积</dt>
									<dd>
										<span>88平米</span>
									</dd>
								</dl>
								<dl>
									<dt>朝向</dt>
									<dd>
										<span>南北</span>
									</dd>
								</dl>
								<dl>
									<dt>楼层</dt>
									<dd>
										<span>2/8</span>
									</dd>
								</dl>
								<dl>
									<dt>户型</dt>
									<dd>
										<span>一室一厅</span>
									</dd>
								</dl>
								<dl>
									<dt>类型</dt>
									<dd>
										<span>普通住宅</span>
									</dd>
								</dl>
							</div>
						</div>
						<div class="user-said">
							<div class="user-title">
								<label for="">业主说：</label>
							</div>
							<div class="said-content">
								<p>精装修 两室两厅一卫 采光好 户型好 客厅大气 联系我随时看房</p>
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
						<img src="../static/image/user_96px.png" alt="" width="100%" />
					</div>
					<div class="user-realname">
						<span>周奇</span>
					</div>
					<div class="user-telnum">
						<i class="fa fa-mobile fa-2x"></i>&nbsp;&nbsp;<span>15233532170</span>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>
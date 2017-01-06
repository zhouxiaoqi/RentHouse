<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>求租专区</title>
<script src="../static/jquery/jquery-3.1.0.min.js"></script>
<script src="../static/bootstrap/bootstrap.min.js"></script>
<script src="../static/vue/vue.js"></script>
<script src="../static/js/wantrent.js"></script>
<link rel="stylesheet"
	href="../static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="../static/simplegrid/simplegrid.css" />
<link rel="stylesheet"
	href="../static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="../static/css/wantrent.css" />
</head>
<body>
	<jsp:include page="../common/header.jsp"/>

	<div class="grid-fluid ">
		<div class="col-10-12 push-1-12 middle-nav">
			<div class="region">
				<div class="region-title">
					<label for="">区域：</label>
				</div>
				<div class="region-content">
					<a href="#">全部</a> <a href="#">巴南</a> <a href="#">江北</a> <a
						href="#">南岸</a> <a href="#">九龙坡</a> <a href="#">沙坪坝</a> <a
						href="#">渝中</a> <a href="#">北碚</a> <a href="#">大渡口</a> <a href="#">长寿区</a>
				</div>
			</div>
			<hr />
			<div class="price">
				<div class="price-title">
					<label for="">期望租金：</label>
				</div>
				<div class="price-content">
					<a href="#">全部</a> <a href="#">500以下</a> <a href="#">500-1000</a> <a
						href="#">1000-2000</a> <a href="#">2000-3000</a> <a href="#">3000-5000</a>
					<a href="#">5000以上</a>
				</div>
			</div>
			<hr />
			<div class="type">
				<div class="type-title">
					<label for="">房型：</label>
				</div>
				<div class="type-content">
					<a href="#">一室</a> <a href="#">二室</a> <a href="#">三室</a> <a
						href="#">四室</a> <a href="#">五室及以上</a>
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
							<button class="btn btn-danger  btn-sm">查询</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!---------->
	<div class="grid-fluid">
		<div class="col-10-12 push-1-12 house-list" id="rentcontent">
			<div class="col-10-12">
				<div class="cent">
					<div class="col-3-12">
						<div class="header-img">
							<img src="../static/image/user_128px.png" alt="" />
						</div>
					</div>
					<div class="col-9-12">
						<div class="house-title">
							<h4>环境一定要好，交通方便。可长租</h4>
						</div>
						<div class="house-info">
							<p>理想位置：小龙坎</p>
							<p>户型要求：1室0厅</p>
							<p>租赁方式：可合租可整租</p>
							<p>装修条件：不限</p>
							<p>房屋朝向：不限</p>
						</div>
						<div class="house-price">
							<span>期望租金：<strong>￥ 1000/月</strong></span>
						</div>
						<div class="user-name">
							<span>联系人：周奇</span> <span>|</span> <span>联系方式：15223532170</span>
						</div>
					</div>
				</div>
			</div>

			<div class="col-2-12">
				<div class="release-rent">
					<a href="#" class="btn btn-danger btn-lg">发布求租信息</a>
				</div>
				<div class="location" id="location">
					<h5>
						当前城市：<strong>重庆</strong>
					</h5>
					<button class="btn btn-danger" v-on:click="togglecity">切换城市</button>
				</div>
			</div>

			<!--选择城市遮罩层-->
			<div class="mask" v-show="togglemask" id="mask">
				<div class="grid-fluid">
					<div class="col-4-12 push-4-12">
						<div class="city-list" style="border: 1px solid;">
							<div class="northeast">
								<div class="northeast-title">
									<label for="">华北东北：</label>
								</div>
								<div class="cities-link">
									<a href="#">北京</a> <a href="#">天津</a> <a href="#">大连</a> <a
										href="#">石家庄</a> <a href="#">哈尔滨</a> <a href="#">沈阳</a>
								</div>
							</div>
							<hr />
							<div class="east">
								<div class="east-title">
									<label for="">华东地区：</label>
								</div>
								<div class="cities-link">
									<a href="#">上海</a> <a href="#">杭州</a> <a href="#">苏州</a> <a
										href="#">南京</a> <a href="#">无锡</a> <a href="#">济南</a> <a
										href="#">青岛</a>
								</div>
							</div>
							<hr />
							<div class="south">
								<div class="south-title">
									<label for="">华南地区：</label>
								</div>
								<div class="cities-link">
									<a href="#">深圳</a> <a href="#">广州</a> <a href="#">佛山</a> <a
										href="#">长沙</a> <a href="#">三亚</a> <a href="#">东莞</a> <a
										href="#">厦门</a>
								</div>
							</div>
							<hr />
							<div class="midwest">
								<div class="midwest-title">
									<label for="">中西部：</label>
								</div>
								<div class="cities-link">
									<a href="#">成都</a> <a href="#">重庆</a> <a href="#">武汉</a> <a
										href="#">郑州</a> <a href="#">西安</a> <a href="#">昆明</a> <a
										href="#">洛阳</a>
								</div>
							</div>
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
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
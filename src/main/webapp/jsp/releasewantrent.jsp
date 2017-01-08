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
<title>发布求租信息</title>
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/bootstrap/bootstrap.min.js"></script>
<script src="static/vue/vue.js"></script>
<script src="static/vue/vue-resource.js"></script>
<script src="static/jqueryui/jquery-ui.js"></script>
<script src="static/js/releasewantrent.js"></script>
<link rel="stylesheet"
	href="static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="static/jqueryui/jquery-ui.css" />
<link rel="stylesheet" href="static/simplegrid/simplegrid.css" />
<link rel="stylesheet"
	href="static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="static/css/releasewantrent.css" />
</head>
<body>
	<div class="bgimg">
		<img src="static/image/bg3.jpeg" alt="" width="100%" height="100%">
	</div>

	<div class="mask">
		<jsp:include page="../common/header.jsp" />
		<div class="col-6-12 push-1-12">
			<div class="wantrent" id="wantrent">
				<div class="wantrent-title">
					<h3>发布求租信息</h3>
				</div>
				<div class="alert alert-danger" role="alert" v-show="warntip"
					style="text-align: center;">{{warninfo}}</div>
				<div class="rent-form">
					<form action="releasewantrent/insertwantrent.do" method="post" id="myform">
						<div class="wantrent-location">
							<label for=""><i>*</i>理想位置：</label> <select name="province.pid"
								class="form-control input-sm" id="province" v-on:change="getcity">
								<option value="">请选择</option>
								<option v-for="province in provinces" v-bind:value="province.pid">{{province.pname}}</option>
							</select> <select name="city.cid" class="form-control input-sm" id="city">
								<option value="">请选择</option>
								<option v-for="city in cities" v-bind:value="city.cid">{{city.cname}}</option>
							</select>
						</div>
						<br />
						<div class="house-type">
							<label for=""><i>*</i>户型要求：</label> <input type="text" name="housetype"
								id="room" class="form-control input-sm" />&nbsp;<span>室</span>
							<input type="text" name="" id="office"
								class="form-control input-sm" />&nbsp;<span>厅</span>
						</div>
						<br />
						<div class="rent-type">
							<label for=""><i>*</i>租赁方式：</label> <select name="renttype"
								class="form-control input-sm" id="rent-type">
								<option value="整租">整租</option>
								<option value="合租">合租</option>
								<option value="可整租可合租">可整租可合租</option>
							</select>
						</div>
						<br />
						<div class="renovation-type">
							<label for=""><i>*</i>装修条件：</label> <select name="renovation"
								class="form-control input-sm" id="renovation-type">
								<option value="毛坯房">毛坯房</option>
								<option value="普通装修">普通装修</option>
								<option value="精装修">精装修</option>
								<option value="豪华装修">豪华装修</option>
								<option value="不限">不限</option>
							</select>
						</div>
						<br />
						<div class="house-orientation">
							<label for=""><i>*</i>房屋朝向：</label> <select name="orientation"
								class="form-control input-sm" id="orientation">
								<option value="">房屋朝向</option>
								<option value="东">东</option>
								<option value="南">南</option>
								<option value="西">西</option>
								<option value="北">北</option>
								<option value="南北">南北</option>
								<option value="东西">东西</option>
								<option value="东南">东南</option>
								<option value="东北">东北</option>
								<option value="不限">不限</option>
							</select>
						</div>
						<br />
						<div class="house-price">
							<label for=""><i>*</i>期望租金：</label> <input name="price" id="house-price"
								type="text" class="form-control input-sm" />&nbsp;/月
						</div>
						<hr />
						<div class="your-name">
							<label for=""><i>*</i>您的姓名：</label> <input name="realname" type="text"
								class="form-control input-sm" id="your-name" />
						</div>
						<br />
						<div class="your-telnum">
							<label for=""><i>*</i>联系方式：</label> <input name="telnum" type="text"
								class="form-control input-sm" id="your-contact" />
						</div>
						<br />
						<div class="sub-btn">
							<button type="button" class="btn btn-danger" v-on:click="submit">发布需求</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>
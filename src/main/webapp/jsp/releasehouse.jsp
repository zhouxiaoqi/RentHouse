<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>发布房源</title>
<script src="../static/jquery/jquery-3.1.0.min.js"></script>
<script src="../static/bootstrap/bootstrap.min.js"></script>
<script src="../static/vue/vue.js"></script>
<script src="../static/jqueryui/jquery-ui.js"></script>
<script src="../static/js/releasehouse.js"></script>
<link rel="stylesheet"
	href="../static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="../static/jqueryui/jquery-ui.css" />
<link rel="stylesheet" href="../static/simplegrid/simplegrid.css" />
<link rel="stylesheet"
	href="../static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="../static/css/releasehouse.css" />
</head>
<body>
	<div class="bgimg">
		<img src="../static/image/releasehouse.jpeg" alt="" width="100%"
			height="100%">
	</div>
	<div class="mask">
	<jsp:include page="../common/header.jsp"/>
		<div class="grid-fluid" style="margin-top: 20px;">
			<div class="col-6-12 push-6-12">
				<div class="release-house">
					<div class="tip">
						<span>用户请保证发布房源的真实性，可靠性。</span>
					</div>
					<div class="release-form" id="release-form">
						<div class="alert alert-danger" role="alert" v-show="warntip"
							style="text-align: center;">{{warninfo}}</div>
						<form action="#" method="post">
							<div class="form-group house-location">
								<label for=""><i>*</i>房源地区</label><br /> <select name=""
									class="form-control input-sm" id="province">
									<option value="北京">北京</option>
									<option value="上海">上海</option>
									<option value="广东">广东</option>
									<option value="成都">成都</option>
									<option value="重庆">重庆</option>
									<option value="安徽">安徽</option>
									<option value="内蒙">内蒙</option>
								</select> <select name="" class="form-control input-sm" id="city">
									<option value="昌平">昌平</option>
								</select>
							</div>
							<br />
							<div class="form-group">
								<label for=""><i>*</i>房源小区详细地址</label> <input type="text"
									class="form-control input-sm" name="" id="detail-address"
									placeholder="请输入详细地址以及小区" />
							</div>
							<div class="form-group area">
								<label for=""><i>*</i>面积|m²</label> <input type="text"
									class="form-control input-sm" name="" id="area"
									placeholder="请输入面积" />
							</div>
							<div class="house-type">
								<input type="text" class="form-control input-sm" name=""
									id="room" placeholder="几室" /> <label for=""><i>*</i>室</label>
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
									class="form-control input-sm" name="" id="office"
									placeholder="几厅" /> <label for=""><i>*</i>厅</label>
							</div>
							<br />
							<div class="house-price">
								<input type="text" class="form-control input-sm" name=""
									id="price" placeholder="租金" /> <label for=""><i>*</i>/月</label>
							</div>
							<br />
							<div class="house-floor">
								<input type="text" class="form-control input-sm" name=""
									id="layer" /> <label for=""><i>*</i>层/共</label> &nbsp; <input
									type="text" class="form-control input-sm" name=""
									id="total-layer" /> <label for=""><i>*</i>层</label>
							</div>
							<br />
							<div class="house-else">
								<select name="" class="form-control input-sm" id="house-type">
									<option value="">房屋类型：必选</option>
									<option value="平房">平房</option>
									<option value="普通住宅">普通住宅</option>
									<option value="酒店式公寓">酒店式公寓</option>
									<option value="独栋别墅">独栋别墅</option>
									<option value="其他">其他</option>
								</select> &nbsp; <select name="" class="form-control input-sm"
									id="renovation-type">
									<option value="">装修：必选</option>
									<option value="毛坯">毛坯</option>
									<option value="普通装修">普通装修</option>
									<option value="精装修">精装修</option>
									<option value="豪华装修">豪华装修</option>
								</select> &nbsp; <select name="" class="form-control input-sm"
									id="orientation">
									<option value="">朝向：必选</option>
									<option value="东">东</option>
									<option value="南">南</option>
									<option value="西">西</option>
									<option value="北">北</option>
									<option value="南北">南北</option>
									<option value="东西">东西</option>
									<option value="东南">东南</option>
									<option value="东北">东北</option>
								</select>
							</div>
							<br />
							<div class="user-said">
								<textarea name="" id="said" rows="4" cols=""
									class="form-control" style="resize: none;"
									placeholder="让买家更好的了解您的房子！说点什么吧.."></textarea>
							</div>
							<br />
							<div class="house-picture">
								<div>
									<label for="">房源图：更好的展示您的房源</label>
								</div>
								<div class="picture1" v-on:click="clickpic1">
									<span v-show="hide1">+</span> <input type="file" name=""
										id="pic1" v-show="hidefile" /> <img v-bind:src="img1"
										v-show="toggleimg1" alt="" />
								</div>
								<div class="picture2" v-on:click="clickpic2">
									<span v-show="hide2">+</span> <input type="file" name=""
										id="pic2" v-show="hidefile" /> <img v-bind:src="img2"
										v-show="toggleimg2" alt="" />
								</div>
								<div class="picture3" v-on:click="clickpic3">
									<span v-show="hide3">+</span> <input type="file" name=""
										id="pic3" v-show="hidefile" /> <img v-bind:src="img3"
										v-show="toggleimg3" alt="" />
								</div>
								<div class="picture4" v-on:click="clickpic4">
									<span v-show="hide4">+</span> <input type="file" name=""
										id="pic4" v-show="hidefile" /> <img v-bind:src="img4"
										v-show="toggleimg4" alt="" />
								</div>
								<div class="picture5" v-on:click="clickpic5">
									<span v-show="hide5">+</span> <input type="file" name=""
										id="pic5" v-show="hidefile" /> <img v-bind:src="img5"
										v-show="toggleimg5" alt="" />
								</div>
							</div>
							<hr />
							<div class="form-group">
								<label for="">房源有效期至：</label> <input type="text" name=""
									class="form-control input-sm" id="date" v-on:blur="datepicker" />
							</div>
							<div class="form-group has-warning">
								<label for="">手机号码</label> <input type="tel" name="" id="telnum"
									class="form-control input-sm" placeholder="留下您的联系方式" />
							</div>
							<div class="form-group has-warning">
								<label for="">真实姓名</label> <input type="tel" name=""
									id="realname" class="form-control input-sm"
									placeholder="留下您的真实姓名" />
							</div>
							<br />
							<div class="submit-btn">
								<button type="button" class="btn btn-success btn-block"
									v-on:click="releasesubmit">立即发布</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../common/footer.jsp"/>
	</div>
</body>
</html>
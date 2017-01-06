<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>发布求租信息</title>
<script src="../static/jquery/jquery-3.1.0.min.js"></script>
<script src="../static/bootstrap/bootstrap.min.js"></script>
<script src="../static/vue/vue.js"></script>
<script src="../static/jqueryui/jquery-ui.js"></script>
<link rel="stylesheet"
	href="../static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="../static/jqueryui/jquery-ui.css" />
<link rel="stylesheet" href="../static/simplegrid/simplegrid.css" />
<link rel="stylesheet"
	href="../static/font-awesome/font-awesome.min.css" />
<link rel="stylesheet" href="../static/css/releasewantrent.css" />
</head>
<body>
	<div class="bgimg">
		<img src="../static/image/bg3.jpeg" alt="" width="100%" height="100%">
	</div>

	<div class="mask">
	<jsp:include page="../common/header.jsp"/>
		<div class="col-6-12 push-1-12">
			<div class="wantrent">
				<div class="wantrent-title">
					<h3>发布求租信息</h3>
				</div>
				<div class="rent-form">
					<form action="#" method="post">
						<div class="wantrent-location">
							<label for=""><i>*</i>理想位置：</label> <select name=""
								class="form-control input-sm">
								<option value="">请选择</option>
								<option value="">北京</option>
								<option value="">重庆</option>
								<option value="">上海</option>
								<option value="">深圳</option>
								<option value="">四川</option>
							</select> <select name="" class="form-control input-sm">
								<option value="">请选择</option>
								<option value="">朝阳区</option>
							</select>
						</div>
						<br />
						<div class="house-type">
							<label for=""><i>*</i>户型要求：</label> <input type="text" name=""
								id="" class="form-control input-sm" />&nbsp;<span>室</span> <input
								type="text" name="" id="" class="form-control input-sm" />&nbsp;<span>厅</span>
						</div>
						<br />
						<div class="rent-type">
							<label for=""><i>*</i>租赁方式：</label> <select name=""
								class="form-control input-sm">
								<option value="">整租</option>
								<option value="">合租</option>
								<option value="">可整租可合租</option>
							</select>
						</div>
						<br />
						<div class="renovation-type">
							<label for=""><i>*</i>装修条件：</label> <select name=""
								class="form-control input-sm">
								<option value="">毛坯房</option>
								<option value="">普通装修</option>
								<option value="">精装修</option>
								<option value="">豪华装修</option>
								<option value="">不限</option>
							</select>
						</div>
						<br />
						<div class="house-orientation">
							<label for=""><i>*</i>房屋朝向：</label> <select name=""
								class="form-control input-sm">
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
						<hr />
						<div class="your-name">
							<label for=""><i>*</i>您的姓名：</label> <input type="text"
								class="form-control input-sm" />
						</div>
						<br />
						<div class="your-telnum">
							<label for=""><i>*</i>联系方式：</label> <input type="text"
								class="form-control input-sm" />
						</div>
						<br />
						<div class="sub-btn">
							<button class="btn btn-danger">发布需求</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../common/footer.jsp"/>
	</div>
</body>
</html>
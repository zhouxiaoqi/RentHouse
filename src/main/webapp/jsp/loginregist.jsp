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
<title>登录注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/bootstrap/bootstrap.min.js"></script>
<script src="static/js/loginregist.js"></script>
<script src="static/vue/vue.js"></script>
<script src="static/vue/vue-resource.js"></script>
<link rel="stylesheet" href="static/css/loginregist.css">
<link rel="stylesheet" href="static/bootstrap/bootstrap_simple.min.css">
<link rel="stylesheet" href="static/simplegrid/simplegrid.css" />
</head>
<body>
	<div class="bgimg">
		<img src="static/image/bg-2.jpeg" alt="" width="100%" height="100%">
	</div>
	<div class="mask" id="maskcontent">
		<div class="logo-title">
			<h3>
				<a href="index.html">宜客租房</a>
			</h3>
		</div>
		<div class="grid-fluid">
			<div class="col-4-12 push-8-12">
				<div class="login" v-show="!togglehidden">
					<div class="login-title">
						<h3>登录</h3>
					</div>
					<hr />
					<div class="login-form">
						<div class="tip" v-show="togglewarn">
							<span>{{warnmsg}}</span>
						</div>
						<div style="width: 80%; margin: 0 auto;">
							<form action="" method="post">
								<div class="form-group">
									<label for="" class="control-label">用户名/UserName</label> <input
										type="text" class="form-control" name="username" id="l-username" />
								</div>
								<div class="form-group">
									<label for="" class="control-label">密码/Password</label> <input
										type="password" class="form-control" name="password" id="l-password" />
								</div>
								<div class="submit-btn">
									<button type="button" class="btn btn-success"
										v-on:click="login">登录</button>
								</div>
							</form>
							<hr />
							<div class="goto-regist">
								<span><a style="cursor: pointer;" v-on:click="showthis">没有账号？快去注册!</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="regist" v-show="togglehidden">
					<div class="regist-title">
						<h3>注册</h3>
					</div>
					<hr />
					<div class="regist-form">
						<div class="tip" v-show="togglewarn">
							<span>{{warnmsg}}</span>
						</div>
						<div style="width: 80%; margin: 0 auto;">
							<form action="user/regist.do" method="post" id="regist-form">
								<div class="form-group">
									<label for="" class="control-label">用户名/UserName</label> <input
										type="text" class="form-control" name="username"
										id="r-username" v-on:blur="validateusername"/>
								</div>
								<div class="form-group">
									<label for="" class="control-label">密码/Password</label> <input
										type="password" class="form-control" name="password"
										id="r-password" />
								</div>
								<div class="form-group">
									<label for="" class="control-label">重复密码/RePassword</label> <input
										type="password" class="form-control" name="" id="r-repassword" />
								</div>
								<div class="submit-btn">
									<button class="btn btn-success" v-on:click="regist"
										type="button">注册</button>
								</div>
							</form>
							<hr />
							<div class="goto-login">
								<span><a style="cursor: pointer;" v-on:click="showthis">已有账号，快去登录!</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
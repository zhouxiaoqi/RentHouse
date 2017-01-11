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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>登录</title>
<link rel="stylesheet" href="static/admin_css/pintuer.css">
<link rel="stylesheet" href="static/admin_css/admin.css">
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/admin_js/pintuer.js"></script>
<script src="static/vue/vue.js"></script>
<script src="static/vue/vue-resource.js"></script>
</head>
<body>
	<div class="bg"></div>
	<div class="container">
		<div class="line bouncein" id="login">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height: 150px;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<form  method="post">
					<div class="panel loginbox">
						<div class="text-center margin-big padding-big-top">
							<h1>后台管理中心</h1>
						</div>
						<div style="text-align: center;" v-show="loginsuccessornot">
							<span style="color:red">账号或密码错误</span>
						</div>
						<div class="panel-body"
							style="padding: 30px; padding-bottom: 10px; padding-top: 10px;">
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="text" class="input input-big" name="name"
										placeholder="登录账号" data-validate="required:请填写账号" id="adminname"/> <span
										class="icon icon-user margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="password" class="input input-big" name="password"
										placeholder="登录密码" data-validate="required:请填写密码" id="password"/> <span
										class="icon icon-key margin-small"></span>
								</div>
							</div>
						</div>
						<div style="padding: 30px;">
							<button type="button" class="button button-block bg-main text-big input-big" v-on:click="loginsubmit">
								登录
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var vm = new Vue({
			el:"#login",
			data:{
				loginsuccessornot:false
			},
			methods:{
				loginsubmit:function(){
					var me = this;
					var adminname = $("#adminname").val();
					var password = $("#password").val();
					$.post(
						'user/adminlogin.do',
						{adminname:adminname,password:password},
						function(data){
							if(data == 1){
								window.location.href = "user/adminindex.do";
							}else{
								me.loginsuccessornot = true;
							}
						}
					)
				}
			}
		})
	</script>
</body>
</html>
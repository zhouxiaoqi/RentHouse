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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/vue/vue.js"></script>
<script src="static/vue/vue-resource.js"></script>
<script src="static/admin_js/pintuer.js"></script>
<script src="static/admin_js/admin_wantrent.js"></script>
<link rel="stylesheet" href="static/admin_css/pintuer.css">
<link rel="stylesheet" href="static/admin_css/admin.css">
<title></title>
</head>
<body>
	<div class="panel admin-panel" id="admin_wantrent">
		<div class="panel-head">
			<strong class="icon-reorder"> 求租信息列表</strong>
		</div>
		<table class="table table-hover text-center">
			<tr>
				<th>ID</th>
				<th>位置</th>
				<th>要求规格</th>
				<th>租赁方式</th>
				<th>装修风格</th>
				<th>朝向</th>
				<th>期望租金</th>
				<th>发布人</th>
				<th>联系方式</th>
				<th>操作</th>
			</tr>

			<tr v-for="wantrent in wantrents">
				<td>{{wantrent.wid}}</td>
				<td>{{wantrent.city.cname}}</td>
				<td>{{wantrent.room}}室{{wantrent.office}}厅</td>
				<td>{{wantrent.renttype}}</td>
				<td>{{wantrent.renovation}}</td>
				<td>{{wantrent.orientation}}</td>
				<td>{{wantrent.price}} /月</td>
				<td>{{wantrent.realname}}</td>
				<td>{{wantrent.telnum}}</td>
				<td v-if="wantrent.showorhide == 1">
					<div class="button-group">
						<a class="button border-red" v-bind:href="'releasewantrent/updatehide/'+ wantrent.wid +'.do'"><span
							class="icon-trash-o"></span> 下架</a>
					</div>
				</td>
				<td v-else>
					<div class="button-group">
						<a class="button border-main" v-bind:href="'releasewantrent/updateshow/'+ wantrent.wid +'.do'"><span
							class="icon-edit"></span> 上架</a>
					</div>
				</td>
			</tr>

		</table>
	</div>
</body>
</html>
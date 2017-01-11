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
<script src="static/admin_js/admin_house.js"></script>

<link rel="stylesheet" href="static/admin_css/pintuer.css">
<link rel="stylesheet" href="static/admin_css/admin.css">
<title>用户</title>
</head>
<body>
	<div class="panel admin-panel" id="admin_house">
		<div class="panel-head">
			<strong class="icon-reorder"> 房源列表</strong>
		</div>
		<table class="table table-hover text-center">
			<tr>
				<th>ID</th>
				<th width="14%">房源图</th>
				<th>位置</th>
				<th>房源地址</th>
				<th>房源面积</th>
				<th>房源规格</th>
				<th>租金</th>
				<th>楼层/总楼层</th>
				<th>发布人</th>
				<th>联系方式</th>
				<th>操作</th>
			</tr>

			<tr v-for="house in houses">
				<td>{{house.rid}}</td>
				<td><img v-bind:src="house.picture1" alt="" width="120"
					height="50" /></td>
				<td>{{house.city.cname}}</td>
				<td>{{house.detailaddress}}</td>
				<td>{{house.area}}m²</td>
				<td>{{house.room}}室{{house.office}}厅</td>
				<td>¥ {{house.price}}/月</td>
				<td>{{house.layer}}/{{house.totallayer}}</td>
				<td>{{house.realname}}</td>
				<td>{{house.telnum}}</td>
				<td v-if="house.showorhide == 1">
					<div class="button-group">
						<a v-bind:href="hideuri+house.rid+'.do'" class="button border-red">
							<span class="icon-trash-o"></span> 下架
						</a>
					</div>
				</td>
				<td v-else>
					<div class="button-group">
						<a v-bind:href="showuri+house.rid+'.do'" class="button border-main">
							<span class="icon-edit"></span> 上架
						</a>
					</div>
				</td>
			</tr>

		</table>
	</div>
</body>
</html>
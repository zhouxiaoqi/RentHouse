<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<script src="../static/jquery/jquery-3.1.0.min.js"></script>
<script src="../static/admin_js/pintuer.js"></script>
<link rel="stylesheet" href="../static/admin_css/pintuer.css">
<link rel="stylesheet" href="../static/admin_css/admin.css">
<title>用户</title>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 用户列表</strong>
		</div>
		<table class="table table-hover text-center">
			<tr>
				<th width="10%">ID</th>
				<th width="20%">图片</th>
				<th width="15%">名称</th>
				<th width="20%">描述</th>
				<th width="10%">排序</th>
				<th width="15%">操作</th>
			</tr>

			<tr>
				<td>1</td>
				<td><img src="images/11.jpg" alt="" width="120" height="50" /></td>
				<td>首页焦点图</td>
				<td>描述文字....</td>
				<td>1</td>
				<td><div class="button-group">
						<a class="button border-main" href="#add"><span
							class="icon-edit"></span> 修改</a> <a class="button border-red"
							href="javascript:void(0)" onclick="return del(1,1)"><span
							class="icon-trash-o"></span> 删除</a>
					</div></td>
			</tr>

		</table>
	</div>
	<script type="text/javascript">
		function del(id, mid) {
			if (confirm("您确定要删除吗?")) {

			}
		}
	</script>
</body>
</html>
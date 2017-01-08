<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv=refresh content="10;url=user/index.do">
<script src="static/jquery/jquery-3.1.0.min.js"></script>
<script src="static/bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/simplegrid/simplegrid.css" />
<link rel="stylesheet" href="static/bootstrap/bootstrap_simple.min.css">
<link href="st" />
<title>发布成功</title>
<style type="text/css">
.success-img {
	text-align: center;
}

.success-info h3 {
	text-align: center;
	color: #25AE88;
}

.success-info p {
	text-align: center;
	color: #929292;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="grid-fluid">
		<div class="col-6-12 push-3-12">
			<div class="success-img">
				<img alt="发布成功" src="static/image/success.png">
			</div>
			<div class="success-info">
				<h3>发布成功</h3>
				<br />
				<p>我们将在1-3个工作日审核您发布的信息。</p>
				<p>
					10秒后回到<a href="user/index.do">首页</a>
				</p>
			</div>
		</div>
	</div>
	<div style="margin-top:400px">
		<jsp:include page="../common/footer.jsp" />
	</div>
</body>
</html>
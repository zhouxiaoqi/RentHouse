<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>Insert title here</title>
<style type="text/css">
/*head*/
.mynav {
	margin-bottom: 2px;
}

.title a {
	font-size: 20px;
	font-weight: 800;
}

.banner img {
	width: 100%;
	height: 600px;
	overflow: hidden;
}
</style>
</head>
<body>
	<!--head-->
	<div class="grid-fluid" style="margin-top: 0px;">
		<nav class="navbar navbar-default mynav" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header title">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="color: #22B24C;">宜客租房</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav" style="padding-left: 50px;">
					<li class="active"><a href="releasewantrent/wantrent.do">求租专区</a></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="您想要的，都在这里～"
							style="width: 220px;">
					</div>
					<button type="submit" class="btn btn-success">搜索房源</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="releasehouse/gotoinserthouse.do">我要出租&nbsp;<i
							class="fa fa-home"></i></a></li>
					<c:choose>
						<c:when test="${user!=null}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${user.username } <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="">我的收藏</a></li>
									<li><a href="#">我的消息&nbsp;<span class="badge">42</span></a>
									</li>
									<li><a href="user/logout.do">退出登陆</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li><a href="user/loginregist.do">登陆或注册</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</div>
</body>
</html>
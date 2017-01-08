<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="../static/admin_css/pintuer.css">
    <link rel="stylesheet" href="../static/admin_css/admin.css">
    <script src="../static/jquery/jquery-3.1.0.min.js"></script>
</head>

<body style="background-color:#f2f9fd;">
    <div class="header bg-main" style="background-color: #2C3E50">
        <div class="logo margin-big-left fadein-top">
            <h1><img src="../static/admin_image/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
        </div>
        <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red"
                href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
    </div>
    <div class="leftnav">
        <div class="leftnav-title" style="background-color: #2C3E50"><strong><span class="icon-list"></span>菜单列表</strong></div>
        <h2><span class="icon-user"></span>基本设置</h2>
        <ul style="display:block">
            <li><a href="info.jsp" target="right"><span class="icon-caret-right"></span>网站设置</a></li>
            <li><a href="pass.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
            <li><a href="banner.jsp" target="right"><span class="icon-caret-right"></span>首页轮播</a></li>
        </ul>
        <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
        <ul>
            <li><a href="user.jsp" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
            <li><a href="house.jsp" target="right"><span class="icon-caret-right"></span>房源管理</a></li>
            <li><a href="wantrent.jsp" target="right"><span class="icon-caret-right"></span>求租信息管理</a></li>
        </ul>
    </div>
    <script type="text/javascript">
        $(function() {
            $(".leftnav h2").click(function() {
                $(this).next().slideToggle(200);
                $(this).toggleClass("on");
            })
            $(".leftnav ul li a").click(function() {
                $("#a_leader_txt").text($(this).text());
                $(".leftnav ul li a").removeClass("on");
                $(this).addClass("on");
            })
        });
    </script>
    <div class="admin">
        <iframe scrolling="auto" src="info.jsp" name="right" width="100%" height="100%"></iframe>
    </div>
</body>
</html>
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
<title>测试上传</title>
</head>
<body>
	<form action="file/fileUpload.do" method="post"
		enctype="multipart/form-data">
		选择文件:<input type="file" name="file"> <input type="submit"
			value="提交">
	</form>

	<hr/>

	<form action="file/filesupload.do" method="post"
		enctype="multipart/form-data">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			选择文件:<input type="file" name="files">
		<p>
			<input type="submit" value="提交">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/head.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style type="text/css">
body {
	background:
		url("http://baedalnet.com/data/files/attach/images/2225/982/813/006/1283313677_201009011301312912249601_0.jpg");
	background-attachment: fixed;
}

#wrapper {
	background: rgba(255, 255, 255, 0.3);
	position: absolute;
	top: 50%; left : 50%;
	height: 300px;
	width: 400px;
	left: 50%; height : 300px; width : 400px;
	margin: -150px 0 0 -200px;
}

#title {
	text-align: center; margin : 0;
	padding: 0;
	line-height: 100px;
	font-family: sans-serif;
	font-size: 100px;
	color: #47C83E;
	width: 400px;
	height: 100px;
	top: 0;
	margin: 0;
}

input {
 background: #FAED7D;
 border: solid #47C83E 2px;
 border-radius: 10px;
 width: 250px;
 height: 30px;
}


</style>
</head>
<body>
	<div id="wrapper">
		<p id="title">CroSNS</p>
		<form action="">
			ID<input type="text"/><br>
			PW<input type="password" /><br>
			<button type="button">ログイン</button>
		</form>
	</div>
</body>
</html>
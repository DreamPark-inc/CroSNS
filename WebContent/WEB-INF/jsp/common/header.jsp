<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background:
		url("http://baedalnet.com/data/files/attach/images/2225/982/813/006/1283313677_201009011301312912249601_0.jpg");
	background-attachment: fixed;
}

#wrapper {
	margin: 0 auto;
	width: 1200px;
	height: 600px;
}

#header {
	background: olive;
	width: 100%;
	height: 65px;
	position: relative;
	height: 65px;
}

#side, #content {
	background: #fff;
	overflow: hidden;
	float: left;
	margin-top: 10px;
}

#side {
	width:240px;
	min-height: 200px;
	margin-right:10px;
}

#content {
	width: 910px;
	min-height: 560px;
	padding: 20px; 
	float: left;
	overflow: hidden;
}
#sns {
	background: skyblue;
	width:198px;
	height: 198px;
	margin: 20px;s auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<a href="http://localhost:8080/main.do"><div>LOGO</div></a>
			<div>
				<ul>
					<li><a href="http://localhost:8080/contents.do">コンテンツ管理</a></li>
				</ul>
			</div>
			<a href="http://localhost:8080/main.do"><div>ログアウト</div></a>
		</div>
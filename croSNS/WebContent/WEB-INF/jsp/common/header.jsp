<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@font-face {
	font-family: 'JapanSans80';
	src: '../../font/JapanSans80.eot';
	src: '../../font/JapanSans80.eot', '../../font/JapanSans80.woff'
		format('woff'), '../../font/JapanSans80.ttf' format('truetype');
	font-weight: normal;
	font-style: normal;
}

* {
	margin: 0;
	padding: 0;
}

*, html, body, div, p, a, input {
	font-family: 'JapanSans80', 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku  Pro',
		'メイリオ', Meiryo, 'ＭＳ Ｐゴシック', 'MS PGothic', sans-serif;
}

a {
	text-decoration: none;
}

body {
	
}

#wrapper {
	margin: 0 auto;
	width: 1200px;
	height: 600px;
}

#header {
	width: 100%;
	height: 65px;
	position: relative;
	height: 65px;
	overflow: hidden;
}

#logo {
	float: left;
	display: block;
	width: 240px;
	height: 65px;
	line-height: 70px;
	text-decoration: none;
	color: #CEFBC9;
	font-size: 50px;
	text-align: center;
}

#logo::selection {
	background-color: #FFB2D9;
	color: #D9418C;
}

#side, #content {
	background: #fff;
	overflow: hidden;
	float: left;
	margin-top: 10px;
	margin-bottom: 20px;
	border: solid #CFCFCF 1px;
	border-radius: 5px;
}

#side {
	width: 238px;
	min-height: 200px;
	margin-right: 10px;
}

#content {
	width: 908px;
	min-height: 558px;
	padding: 20px;
	float: left;
	overflow: hidden;
}

#sns {
	background: #D4F4FA;
	width: 198px;
	height: 198px;
	margin: 20px;
	border: solid #5CD1E5 1px;
	border-radius: 5px;
	text-align: center;
}

.heart {
	color: #F15F5F;
}

.name {
	color: #5D5D5D;
	font-weight: bold;
}

.wellcom {
	color: #5D5D5D;
}

.fb_btn{
	width: 160px;
	height: 50px;
	margin: 10px 20px 10px 20px;
	background: #4374D9;
	border-radius: 5px;
}
.fb_btn a{
	text-decoration: none;
	color: #fff;
	line-height: 50px;
	font-size: 15px;
}

.menu {
	list-style: none;
	width: 950px;
	float: right;
	padding: 10px 0 10px 0;
}

.menu ul {
	
}

.menu ul li {
	display: inline-block;
	text-align: center;
	height: 43px;
	line-height: 43px;
	border: solid #86E57F 1px;
	border-radius: 5px;
}

.menu ul li:HOVER {
	background: #86E57F;
}

.menu ul li a:HOVER {
	color: #E0FFDB;
}

.menu ul li a {
	display: block;
	padding: 0 15px;
	text-decoration: none;
	color: #86E57F;
}

#logout {
	float: right;
	border: solid #F361A6 1px;
}

#logout:HOVER {
	background: #F361A6;
}

#logout a {
	color: #D9418C;
}

#logout a:HOVER {
	color: #FFD9EC;
}
</style>
<script type="text/javascript">
	function socialCheck(name_check) {

		if (name_check != "") {
			location.href = "/contents.do";
		} else {
			alert("認証が必要です。");
		}
		return;
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<a id="logo" href="/show.do">CroSNS</a>
			<div class="menu">
				<ul>
					<li><a
						href="javascript:socialCheck('${sessionObjects.facebook.name}')">コンテンツ管理</a></li>
					<li id="logout"><a href="logOut.do">ログアウト</a></li>
				</ul>
			</div>
		</div>
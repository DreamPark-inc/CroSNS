<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/head.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
	font-family: 'JapanSans80', 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku  Pro',
		'メイリオ', Meiryo, 'ＭＳ Ｐゴシック', 'MS PGothic', sans-serif;
}

*, html, body, div, p, a, input {
	font-family: 'JapanSans80', 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku  Pro',
		'メイリオ', Meiryo, 'ＭＳ Ｐゴシック', 'MS PGothic', sans-serif;
}

body {
	/* background: #22741C; */
	
}

#wrapper {
	position: absolute;
	top: 50%;
	left: 50%;
	height: 300px;
	width: 400px;
	left: 50%;
	height: 300px;
	width: 400px;
	margin: -150px 0 0 -200px;
}

#title {
	text-align: center;
	margin: 0;
	padding: 0;
	line-height: 100px;
	font-size: 100px;
	color: #B7F0B1;
	width: 400px;
	height: 100px;
	top: 0;
	margin: 0;
}

#title::selection {
	background-color: #FFB2D9;
	color: #D9418C;
}

form {
	top: 400px;
	margin: 30px 0 auto;
	overflow: hidden;
}

input {
	background: #CEFBC9;
	border: solid #86E57F 1px;
	border-radius: 5px;
	width: 250px;
	height: 30px;
	margin: 0 0 10px 75px;
	color: #47C83E;
	text-indent: 1em;
}

input::selection {
	background-color: #FFB2D9;
	color: #D9418C;
}

.btn {
	width: 254px;
	height: 33px;
	background: #FFB2D9;
	border: solid #F361A6 1px;
	color: #D9418C;
}
</style>
</head>
<body>
	<div id="wrapper">
		<p id="title">CroSNS</p>
		<form action="/login.do" method="post">
			<input type="text" name="sysId" id="sysId" placeholder="IDを入力してください。" />
			<input type="password" placeholder="Passwordを入力してください。" name="sysPwd"
				id="sysPwd" /> <input class="btn" type="submit" name="submit"
				id="submit" value="ログイン" />
		</form>
	</div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="/WEB-INF/jsp/common/header.jsp"%>
<%@include file="/WEB-INF/jsp/common/left.jsp"%>
<style type="text/css">
form {
	position: relative;
}

textarea {
	background: #E4F7BA;
	border: solid #BCE55C 1px;
	border-radius: 5px;
	color: #6B9900;
}

.tabs {
	width: 908px;
	float: none;
	list-style: none;
	margin: 20px 0;
}

.tabs li {
	display: block;
	float: left;
}

.labels:after {
	content: '';
	display: table;
	clear: both;
}

.tabs label {
	display: inline-block;
	float: left;
	padding: 10px 20px;
	margin: 0 20px 0 0;
	color: #CCA63D;
	background: #FAECC5;
	cursor: pointer;
	border: solid #F2CB61 1px;
	border-radius: 5px;
}

.tabs label:hover {
	background: #F2CB61;
	color: #FAECC5;
}

.tab-content {
	display: none;
}

.tab-content>input {
	width: 120%;
	height: 43px;
	border: solid #F2CB61 1px;
	border-radius: 5px;
}

.tabs input[type=radio] {
	display: none;
}

.tabs input[type=radio]:checked+label {
	background: red;
}

[id^=tab]:checked ~ div[id^=tab-content] {
	display: block;
}

[id^=tab]:checked ~ [id^=label] {
	background: red;
	color: white;
}

#contents_submit {
	background: #FFD9EC;
	color: #F361A6;
	padding: 10px 20px;
	display: inline-block;
	text-align: center;
	font-size: 50px;
	line-height: 50px;
	border: solid #F361A6 1px;
	border-radius: 5px;
}

#contents_submit:HOVER {
	background: #F361A6;
	color: #FFD9EC;
}

#abtn {
	float: right;
	margin: 20px auto;
}
</style>

<!-- 본문내용 작성 -->

<div id="content">
	<p>統合配布</p>
	<form style="width: 100%" action="/post.do" method="post">
		<textarea cols="10" rows="6" style="width: 100%;" name="message"></textarea>

		<ul class="tabs">
			<li class="labels"><label for="tab1" id="label1">リンク</label> <label
				for="tab2" id="label2">写真</label> <label for="tab3" id="label3">動画</label>
			</li>
			<li><input type="radio" checked name="tabs" id="tab1">
				<div id="tab-content1" class="tab-content">
					<input name="url" type="text">
				</div></li>
			<li><input type="radio" name="tabs" id="tab2">
				<div id="tab-content2" class="tab-content">
					<input name="photo" type="file" />
				</div></li>
			<li><input type="radio" name="tabs" id="tab3">
				<div id="tab-content3" class="tab-content">
					<input name="video" type="file">
				</div></li>
		</ul>
		<div style="clear: both;"></div>
		<div id="abtn">
			<input id="contents_submit" type="submit" value="登録" />
		</div>
	</form>

</div>
<!-- 본문 내용 끝 -->

<%@include file="/WEB-INF/jsp/common/footer.jsp"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@include file="/WEB-INF/jsp/common/header.jsp"%>
<%@include file="/WEB-INF/jsp/common/left.jsp"%>
<style type="text/css">
form {
	position: relative;
}

textarea {
	background: #E4F7BA;
	border: solid #BCE55C 1px;
	border-radius: 5px;
	color: #6B9900;
}

.tabs {
	width: 908px;
	float: none;
	list-style: none;
	margin: 20px 0;
}

.tabs li {
	display: block;
	float: left;
}

.labels:after {
	content: '';
	display: table;
	clear: both;
}

.tabs label {
	display: inline-block;
	float: left;
	padding: 10px 20px;
	margin: 0 20px 0 0;
	color: #CCA63D;
	background: #FAECC5;
	cursor: pointer;
	border: solid #F2CB61 1px;
	border-radius: 5px;
}

.tabs label:hover {
	background: #F2CB61;
	color: #FAECC5;
}

.tab-content {
	display: none;
}

.tab-content>input {
	width: 120%;
	height: 43px;
	border: solid #F2CB61 1px;
	border-radius: 5px;
}

.tabs input[type=radio] {
	display: none;
}

.tabs input[type=radio]:checked+label {
	background: red;
}

[id^=tab]:checked ~ div[id^=tab-content] {
	display: block;
}

[id^=tab]:checked ~ [id^=label] {
	background: red;
	color: white;
}

#contents_submit {
	background: #FFD9EC;
	color: #F361A6;
	padding: 10px 20px;
	display: inline-block;
	text-align: center;
	font-size: 50px;
	line-height: 50px;
	border: solid #F361A6 1px;
	border-radius: 5px;
}

#contents_submit:HOVER {
	background: #F361A6;
	color: #FFD9EC;
}

#abtn {
	float: right;
	margin: 20px auto;
}
</style>

<script type="text/javascript">
	function test(a) {

		for (var i = 1; i <= 3; i++) {

			if (i == a) {
				document.getElementById('label' + a).style.backgroundColor = '#F2CB61';
				document.getElementById('label' + a).style.color = '#FAECC5';
			} else {
				document.getElementById('label' + i).style.backgroundColor = '#FAECC5';
				document.getElementById('label' + i).style.color = '#CCA63D';
			}
		}
		return;
	}
	function test2(){
		alert(document.getElementsByName("photo")[0].select().text);
	}
</script>
<!-- 본문내용 작성 -->

<div id="content">
	<p>統合配布</p>
	<form style="width: 100%" action="/post.do" method="post" enctype="multipart/form-data">
		<textarea cols="10" rows="6" style="width: 100%;" name="message"></textarea>

		<ul class="tabs">
			<li class="labels"><label for="tab1" id="label1"
				onclick="javascript:test('1');">リンク</label> <label for="tab2"
				id="label2" onclick="javascript:test('2');">写真</label> <label
				for="tab3" id="label3" onclick="javascript:test('3');">動画</label></li>
			<li><input type="radio" checked name="tabs" id="tab1">
				<div id="tab-content1" class="tab-content">
					<input name="url" type="text">
				</div></li>
			<li><input type="radio" name="tabs" id="tab2">
				<div id="tab-content2" class="tab-content">
					<input name="photo" type="file" />
				</div></li>
			<li><input type="radio" name="tabs" id="tab3">
				<div id="tab-content3" class="tab-content">
					<input name="video" type="file">
				</div></li>
		</ul>
		<div style="clear: both;"></div>
		<div id="abtn">
		<input id="contents_submit" type="submit" value="登録" />
			<!-- <input id="contents_submit" type="submit" value="登録" /> -->
		</div>
	</form>

</div>


<input id="fakeupload" name="fakeupload[]" class="inputfile fakeupload" type="text" />
<input id="path" name="path[]" class="inputfile realupload" type="file" value="" onchange="javascript:document.getElementById('fakeupload').value =  document.getElementById('path')value;" />


<!-- 본문 내용 끝 -->

<%@include file="/WEB-INF/jsp/common/footer.jsp"%> --%>
	<script>
	location.replace("/login.do");
	</script> 


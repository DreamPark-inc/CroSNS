<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="/WEB-INF/jsp/common/header.jsp"%>
<%@include file="/WEB-INF/jsp/common/left.jsp"%>
<!-- 본문내용 작성 -->

<div id="content">
	<p>統合配布</p>
	<form style="width: 100%">
		<textarea cols="10" rows="10" style="width: 100%;"></textarea>
		イメージ<input type="file"><br>
		動画<input type="file"><br>
		URL<input type="text"><br>
		<button>登録</button>
	</form>
</div>



<!-- 본문 내용 끝 -->

<%@include file="/WEB-INF/jsp/common/footer.jsp"%>
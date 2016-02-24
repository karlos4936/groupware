<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/common/util.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	$("#updateForm").submit(function(){
		if (isEmpty("#title", "제목을 작성하세요."))
			return false;
		if (isEmpty("#date", "등록일을 작성하세요."))
			return false;
		if (isEmpty("#time", "시간을 작성하세요."))
			return false;
		if (isEmpty("#content", "내용을 작성하세요."))
			return false;
		});
	});
</script>
</head>
<body>
<h2>일정수정</h2>
<form action="update.do" method="post" id="updateForm">
	<input type="hidden" name="no" value="${schedule.no }"/>
	<label for="title">글제목</label>
	<input type="text" name="title" id="title" value="${schedule.title }"/><br/>
	<label for="sdate">등록일</label>
	<input type="date" name="sdate" id="date" value="${schedule.sdate }"/>
	<label for="time"></label>
	<input type="number" name="time" id="time" min="0" max="23" value="${schedule.time }"/>시<br/>
	<label for="content">글내용</label>
	<textarea rows="7" cols="60" name="content" id="content">${schedule.content}</textarea><br/>
	<label for="writer">작성자</label>
	<input type="text" value="${login.name }" readonly="readonly"/><br/>
	<input type="hidden" name="writer" value="${login.id }">
	<button>수정</button>
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
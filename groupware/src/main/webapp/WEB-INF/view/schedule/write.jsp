<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
<link href="../css/schedule/write.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/common/util.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	$("#writeForm").submit(function(){
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
<body id="writeBody">
<h1>일정등록</h1>
<br/>
<form action="write.do" method="post" name="write" id="writeForm">
<fieldset id="scheduleWriteField">
	<ul id="writeUl">
		<li id="writeLi">
			<label for="title">제목</label><input type="text" name="title" id="title"/><br/>
		</li>
		<li id="writeLi2">
			<label for="date">등록일</label><input type="date" name="sdate" id="date">
			<label for="time"></label><input type="number" name="time" id="time" min="0" max="23">시<br/>
		</li>
		<li id="writeLi">
			<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content"></textarea><br/>
		</li>
		<li id="writeLi">
			<label for="writer">작성자</label>
			<input type="text" value="${login.name }" readonly="readonly"/><br/>
			<input type="hidden" name="writer" value="${login.id }">
			<button>작성</button>
			<button type="button" onclick="history.back()">취소</button>
		</li>
	</ul>
</fieldset>
</form>
</body>
</html>
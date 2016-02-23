<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
</head>
<body>
<h2>일정등록</h2>
<form action="write.do" method="post" name="write">
	<label for="title">제목</label><input type="text" name="title" id="title"/><br/>
	<label for="date">등록일</label><input type="date" name="date">
	<label for="time"></label><input type="text" name="time" size=2>시<br/>
	<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content"></textarea><br/>
	<label for="writer">작성자</label><input type="text" name="writer" id="writer"/><br/>
	<button>작성</button>
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
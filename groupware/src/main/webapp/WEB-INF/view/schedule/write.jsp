<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
</head>
<body>
<h2>일정등록</h2>
<form action="write.do" method="post">
	<label for="title">제목</label><input type="text" name="title" id="title"/><br/>
	<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content"></textarea><br/>
	<label for="writer">작성자</label><input type="text" name="writer" id="writer"/><br/>
	<label for="sdate">등록일</label><input type="text" name="sdate" id="sdate"/><br/>
	<label for="time">등록시간</label><input type="text" name="time" id="time"/><br/>
	<button>작성</button>
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
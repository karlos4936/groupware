<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
</head>
<body>
<h2>자유게시판 글쓰기</h2>
<form action="write.do" method="post">
	<label for="title">글제목</label>
	<input type="text" name="title" id="title"/><br/>
	<label for="content">글내용</label>
	<textarea rows="7" cols="60" name="content" id="content"></textarea><br/>
	<label for="writer">작성자</label>
	<input type="text" name="writer"/><br/>
	<button>작성</button>
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글수정</title>
</head>
<body>
<h2>공지사항 글수정</h2>
<form action="update.do" method="post">
	<input type="hidden" name="no" value="${notice.no }" />
	<label for="title">글제목</label><input type="text" name="title" id="title" value="${notice.title }"/><br/>
	<label for="content">글내용</label><textarea rows="7" cols="60" name="content">${notice.content }</textarea>
	<label for="writer">작성자</label><input type="text" name="writer" id="writer" value="${notice.writer }" readonly="readonly"/><br/>
	
	<button>수정</button>
	
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
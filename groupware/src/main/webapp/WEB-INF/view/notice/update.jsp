<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글수정</title>
</head>
<body>
<h2>공지사항 글수정</h2>
<form action="update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="${notice.no }" />
	<label for="title">글제목</label><input type="text" name="title" id="title" value="${notice.title }"/><br/>
	<label for="content">글내용</label><textarea rows="7" cols="60" name="content">${notice.content }</textarea>
	<label for="writer">작성자</label><input type="text" value="${login.id }" readonly="readonly"/><br/>
	<input type="hidden" id="writer" name="writer" value="${login.id }">
	<label for="fileName">파일첨부</label><input type="file" name="file1" ><br/>
	
	<button type="submit">수정</button>
	
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>
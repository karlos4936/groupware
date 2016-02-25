<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>익명게시판 글쓰기</h2>
	<form action="write.do" method="post">
		<label for="title">글제목</label><input id="title" name="title"><br>	
		<label for="content">글내용</label><textarea id="content" name="content" rows="7" cols="60"></textarea><br>
		<label for="writer">작성자</label><input id="writer"value="${fn:substring(login.encId, 0, 8) }" readonly="readonly"><br>
		<input type="hidden" name="writer" value="${login.encId }">
		<button>작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
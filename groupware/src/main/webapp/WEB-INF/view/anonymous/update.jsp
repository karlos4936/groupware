<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>익명게시판 글수정</h2>
	<form action="update.do" method="post">
		<input type="hidden" name="no" value="${anonymous.no }"><br>
		<label for="title">글제목</label><input id="title" name="title" value="${anonymous.title }"><br>	
		<label for="content">글내용</label><textarea id="content" name="content" rows="7" cols="60">${anonymous.content }</textarea><br>
		<label for="writer">작성자</label><input id="writer" name="writer" value="${fn:substring(anonymous.writer, 0, 8) }"><br>
		<label for="wdate">작성일</label><input id="wdate" name="wdate" value="${anonymous.wdate }"><br>
		<label for="hit">조회수</label><input id="hit" name="hit" value="${anonymous.hit }"><br>
		<button>수정</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
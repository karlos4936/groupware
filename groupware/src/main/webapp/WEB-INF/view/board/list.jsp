<%@page import="com.dk.groupware.board.model.BoardModel"%>
<%@page import="com.dk.groupware.board.service.BoardListService"%>
<%@page import="com.dk.groupware.common.ServiceInterface"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
</head>
<body>
<h2>자유게시판 글리스트</h2>
<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
<!-- 	반복의 시작 -->
	<c:forEach var="board" items="${list }">
		<tr>
			<td>${board.no }</td>
			<td><a href="view.do?no=${board.no }">${board.title }</a></td>
			<td>${board.name }</td>
			<td>${board.wdate }</td>
			<td>${board.hit }</td>
		</tr>
	</c:forEach>
<!-- 	반복의 끝 -->
	<tr>
		<td colspan="5"><a href="write.do"><button>글쓰기</button></a></td>
	</tr>
</table>
</body>
</html>
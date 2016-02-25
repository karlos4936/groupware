<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 리스트</title>
</head>
<body>
	<h2>공지사항 리스트</h2>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="notice" items="${list }">
		<tr>
			<td>${notice.no }</td>
			<td><a href="view.do?no=${notice.no }">${notice.title }</a></td>
			<td>${notice.name }</td>
			<td>${notice.wdate }</td>
			<td>${notice.hit }</td>
		</tr>
		</c:forEach>
<!-- 			반복의 끝 -->
		<tr>
			<td colspan="5">  
				<a href="write.do"><button>글쓰기</button></a>
			</td>
		</tr>
	</table>
</body>
</html>
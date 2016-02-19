<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
</head>
<body>
<h2>일정관리 리스트</h2>
<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
	</tr>
<!-- 	반복의 시작 -->
	<c:forEach var="schedule" items="${list }">
		<tr>
			<td>${schedule.no }</td>
			<td><a href="view.do?no=${schedule.no }">${schedule.title }</a></td>
			<td>${schedule.sdate }</td>
		</tr>
	</c:forEach>
<!-- 	반복의 끝 -->
	<tr>
		<td colspan="5"><a href="write.do"><button>일정추가</button></a></td>
	</tr>
</table>
</body>
</html>
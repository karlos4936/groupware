<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원 리스트</h2>

	<table>
		<tr>
			<th>사원ID</th>
			<th>이름</th>
			<th>소속 부서</th>
			<th>직위</th>
		</tr>
		<c:forEach var="member" items="${list }">
		<tr>
			<td><a href="view.do?id=${member.id }">${member.id }</a></td>
			<td>${member.name }</td>
			<td>${member.dep }</td>
			<td>${member.position }</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>
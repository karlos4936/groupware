<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

table th, table td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<h2>익명게시판 글리스트</h2>
	
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	<c:forEach var="anonymous" items="${list }">
		<tr>
			<td>${anonymous.no }</td>
			<td><a href="view.do?no=${anonymous.no}" >${anonymous.title }</a></td>
			<td>${fn:substring(anonymous.writer, 0, 8)}</td>
			<td>${anonymous.wdate }</td>
			<td>${anonymous.hit }</td>
		</tr>	
	</c:forEach>
	<tr>
		<td colspan="5"><a href="write.do"><button>글쓰기</button></a></td>
	</tr>
		
	</table>
	
	
	
</body>
</html>
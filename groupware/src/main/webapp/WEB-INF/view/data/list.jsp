<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자료실 리스트</h2>
	
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
<!-- 		반복의 시작 -->
	<c:forEach var="data" items="${list }">
		<tr>
			<td>${data.no }</td>
			<td><a href="view.do?no=${data.no}">${data. title}</a></td>
			<td>${data.name }</td>
			<td>${data.wdate }</td>
			<td>${data.hit }</td>
		</tr>
	</c:forEach>
<!-- 	반복의 끝 -->
		<tr>
			<td colspan="5"><a href="write.do"><button>글쓰기</button></a></td>
		</tr>
	</table>
	
	<form action="list.do" method="post">
		<select name="option">
			<option>제목</option>
			<option>내용</option>
			<option>제목+내용</option>
			<option>작성자</option>
		</select>
		<input type="text" name="searchStr">
		<button>검색</button>
	</form>
	
</body>
</html>
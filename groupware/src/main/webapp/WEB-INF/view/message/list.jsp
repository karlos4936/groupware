<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 리스트</title>
</head>
<body>
	<h2>쪽지 리스트</h2>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>보낸사람</th>
			<th>받은사람</th>
			<th>보낸시간</th>			
			<th>확인시간</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="message" items="${list }">
		<tr>
			<td>${message.no }</td>
			<td><a href="view.do?no=${message.no }">${message.title }</a></td>
			<td>${message.sender }</td>
			<td>${message.receiver }</td>
			<td>${message.sdate }</td>
			<td>${message.rdate }</td>
		</tr>
		</c:forEach>
<!-- 			반복의 끝 -->
		<tr>
			<td colspan="5">  
				<a href="write.do"><button>쪽지 작성</button></a>
			</td>
		</tr>
	</table>
</body>
</html>
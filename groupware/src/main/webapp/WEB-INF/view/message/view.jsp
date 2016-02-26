<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보기</title>
</head>
<body>
	<h2>쪽지 보기</h2>
	<table>
		<tr>
			<th>글번호</th>
			<td>${message.no }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${message.title}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${message.content }</td>
		</tr>
		<tr>
			<th>보낸사람</th>
			<td>${message.name}</td>
		</tr>
		<!-- 		<tr> -->
		<!-- 			<th>받은사람</th> -->
		<%-- 			<input type="hidden" value="${message.receiver }"> --%>
		<%-- 			<td>${message.receiver}</td> --%>
		<!-- 		</tr> -->

		<!-- 		첨부파일이 없을 경우 숨김 -->
		<c:if test="${message.fileName ne null}">
			<tr>
				<th>첨부 파일</th>
				<!-- 		target을 _blank로 지정해주면 새 창으로 뜬다. -->
				<td><a href="../upload/message/${message.fileName }"
					target="_blank">${message.fileName }</a>
			</tr>
		</c:if>
		<tr>
			<th>보낸시간</th>
			<td>${message.sdate}</td>
		</tr>
		<tr>
			<th>확인시간</th>
			<td>${message.rdate }</td>
		</tr>
		<tr>
			<td colspan="2"><a href="delete.do?no=${message.no }"><button>삭제</button></a>
				<a href="list.do?no=${message.no }"><button>쪽지 리스트</button></a> <c:if
					test="${message.fileName }"></c:if></td>
		</tr>
	</table>
</body>
</html>
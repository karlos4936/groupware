<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자료게시판 글보기</h2>
	<table>
		<tr>
			<th>글번호</th><td>${data.no }</td>
		</tr>
		<tr>
			<th>제목</th><td>${data.title}</td>
		</tr>
		<tr>
			<th>내용</th><td>${data.content}</td>
		</tr>
		<tr>
			<th>첨부 파일</th>
				<c:if test="${data.fileName ne null }">
					<c:if test="${fn:toLowerCase(fn:substringAfter(data.fileName, '.')) eq 'png' ||
					fn:substringAfter(data.fileName, '.') eq 'jpg'||
					fn:substringAfter(data.fileName, '.') eq 'gif'||
					fn:substringAfter(data.fileName, '.') eq 'jpeg'}">
						<img alt="image" src="../upload/data/${data.fileName }">
					</c:if>
					<td>
						<a href="../upload/data/${data.fileName}" target="_blank">${data.fileName}</a>
					</td>
				</c:if>
				
				<c:if test="${data.fileName eq null }">
					<td>
						첨부 파일 없음
					</td>
				</c:if>
			
<%-- 			<c:if test="${fn:contains }"> --%>
<%-- 			<img alt="image" src="../upload/data/${data.fileName }"> --%>
<%-- 			</c:if> --%>
<%-- 			<a href="../upload/data/${data.fileName}" target="_blank">${data.fileName}</a></td> --%>


		</tr>
		<tr>
			<th>작성자</th><td>${data.name }</td>
		</tr>
		<tr>
			<th>조회수</th><td>${data.hit }</td>
		</tr>
		<tr>
			<td colspan="2">
				<c:if test="${login.id eq data.writer }">
				<a href="update.do?no=${data.no }"><button>글수정</button></a>
				</c:if>
				<c:if test="${login.id eq data.writer }">
				<a href="delete.do?no=${data.no }"><button>글삭제</button></a>
				</c:if>
<%-- 				<c:if test="${login.pno==9}"> --%>
<%-- 				<a href="delete.do?no=${data.no }"><button>글삭제</button></a> --%>
<%-- 				</c:if> --%>
				<a href="list.do"><button>글리스트</button></a>
			</td>
		</tr>
	</table>
</body>
</html>
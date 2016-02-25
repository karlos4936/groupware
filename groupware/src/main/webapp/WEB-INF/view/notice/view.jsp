<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글보기</title>
</head>
<body>
	<h2>공지사항 글보기</h2>
	<table>
		<tr>
			<th>글번호</th>
			<td>${notice.no }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${notice.title}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${notice.content }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${notice.name }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${notice.wdate }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${notice.hit }</td>
		</tr>
<!-- 		첨부파일 없을 경우 숨김 -->
		<c:if test="${notice.fileName ne null }">
		<tr>
			<th>업로드 파일</th>
			<!-- 		target을 _blank로 지정해주면 새 창으로 뜬다. -->
			<td><a href="../upload/notice/${notice.fileName}"
				target="_blank">${notice.fileName}</a></td>
		</tr>
		</c:if>
		<tr>
			<td colspan="2">
<!-- 			본인만 글수정, 글삭제 가능 -->
			<c:if test="${notice.writer eq login.id}">
			<a href="update.do?no=${notice.no }"><button>글수정</button></a>
				<a href="delete.do?no=${notice.no }"><button>글삭제</button></a> 
			</c:if>
<!-- 			관리자를 위한 글삭제 -->
			<c:if test="${notice.writer eq login.id }">
				<a href="delete.do?no=${notice.no }"><button>글삭제</button></a> 
			</c:if>
				<a href="list.do?no=${notice.no }"><button>공지사항 리스트</button></a></td>
		</tr>
	</table>
</body>
</html>
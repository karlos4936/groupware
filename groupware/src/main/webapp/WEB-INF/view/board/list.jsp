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
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
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
			<td style="display:block; text-overflow:ellipsis; width:500px; overflow:hidden;">
			<nobr><a href="view.do?no=${board.no }">${board.title }</a></nobr></td>
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
<!-- 페이지 처리 = 반복문 처리 -->
<a href="list.do?page=1"><i class="fa fa-step-backward"></i></a>
<a href="list.do?page=${jspData.startPage>1?jspData.startPage-jspData.pagesPerGroup:1 }"><i class="fa fa-chevron-left"></i><i class="fa fa-chevron-left"></i></a> 
<a href="list.do?page=${jspData.page>1?jspData.page-1:1 }"><i class="fa fa-chevron-left"></i></a>
<c:forEach var="i" begin="${jspData.startPage }" end="${jspData.endPage }">
<a href="list.do?page=${i }">${i }</a>
</c:forEach>
<a href="list.do?page=${jspData.totalPage>jspData.endPage?jspData.page+1:jspData.totalPage }"><i class="fa fa-chevron-right"></i></a> 
<a href="list.do?page=${jspData.totalPage>jspData.endPage?jspData.endPage+1:jspData.totalPage }"><i class="fa fa-chevron-right"></i><i class="fa fa-chevron-right"></i></a> 
<a href="list.do?page=${jspData.totalPage }"><i class="fa fa-step-forward"></i></a>
<br/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
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
	
	<div id="pageMove">
		<a href="list.do?page=1"><i class="fa fa-step-backward"></i></a>
		<a href="list.do?page=${jspData.startPage > 1 ? jspData.startPage-jspData.pagesPerGroup : 1 }"><i class="fa fa-chevron-left"></i><i class="fa fa-chevron-left"></i></a>
		<a href="list.do?page=${jspData.page > 1 ? jspData.page-1 : 1 }"><i class="fa fa-chevron-left"></i></a>
	
		<c:forEach var="i" begin="${jspData.startPage }" end="${jspData.endPage }">
			<c:choose>
				<c:when test="${jspData.page eq i }">
					<i id="cpage">${i }</i>
				</c:when>
				<c:otherwise>
					<a href="list.do?page=${i }">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	
		<a href="list.do?page=${jspData.totalPage > jspData.endPage ? jspData.page+1 : jspData.totalPage }"><i class="fa fa-chevron-right"></i></a>
		<a href="list.do?page=${jspData.totalPage > jspData.endPage ? jspData.endPage+1 : jspData.totalPage }"><i class="fa fa-chevron-right"></i><i class="fa fa-chevron-right"></i></a>
		<a href="list.do?page=${jspData.totalPage }"><i class="fa fa-step-forward"></i></a>
	</div>
	
</body>
</html>
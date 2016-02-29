<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h2>전자결재 대기문서</h2>
	
	<table>
		<tr>
			<th>no</th>
			<th>title</th>
			<th>drafter</th>
			<th>signer1</th>
			<th>signer2</th>
			<th>signer3</th>
			<th>issign1</th>
			<th>issign2</th>
			<th>issign3</th>
			<th>redgate</th>
		</tr>
		
		<c:forEach var="draft" items="${list }">
			<tr>
				<td>${draft.no }</td>
				<td><a href="view.do?no=${draft.no}" >${draft.title }</a></td>
				<td>${draft.drafter }</td>
				<td>${draft.signer1 }</td>
				<td>${draft.signer2 }</td>
				<td>${draft.signer3 }</td>
				<td>${draft.isSign1 }</td>
				<td>${draft.isSign2 }</td>
				<td>${draft.isSign3 }</td>
				<td>${draft.regDate }</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<div id="pageMove">
		<a href="list.do?page=1"><i class="fa fa-step-backward"></i></a>
		<a href="list.do?page=${jspData.startPage > 1 ? jspData.startPage-jspData.pagesPerGroup : 1 }"><i class="fa fa-chevron-left"></i><i class="fa fa-chevron-left"></i></a>
		<a href="list.do?page=${jspData.page > 1 ? jspData.page-1 : 1 }"><i class="fa fa-chevron-left"></i></a>
	
		<c:forEach var="i" begin="${jspData.startPage }" end="${jspData.endPage }">
			<c:choose>
				<c:when test="${jspData.page eq i }">
					<span id="cpage">${i }</span>
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
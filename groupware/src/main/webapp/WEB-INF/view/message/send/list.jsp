<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<title>보낸 쪽지 리스트</title>
</head>
<body>
	<h2>보낸 쪽지 리스트</h2>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
<!-- 			<th>보낸사람</th> -->
			<th>받은사람</th>
			<th>보낸시간</th>			
			<th>확인시간</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="message" items="${list }">
		<tr>
			<td>${message.no }</td>
			<td><a href="view.do?no=${message.no }">${message.title }</a></td>
<%-- 			<td>${message.sender }</td> --%>
			<td>${message.name }</td>
			<td>${message.sdate }</td>
			<td>
			<c:if test="${message.rdate eq null}">미확인</c:if>
			<c:if test="${message.rdate ne null}">${message.rdate }</c:if>
			 </td>
		</tr>
		</c:forEach>
<!-- 			반복의 끝 -->
		<tr>
			<td colspan="5">  
				<a href="../write.do"><button>쪽지 작성</button></a>
			</td>
		</tr>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="../css/message/list.css" rel="stylesheet" type="text/css" /> 

<title>받은 쪽지 리스트</title>
</head>
<body id="messageBody">
	<h3>받은 쪽지 리스트</h3>
	
	<a href="write.do"><button id="messageBtn">쪽지 작성</button></a><br/><br/>
	
	<table id="messageTable">
		<tr id="messageTr">
			<th id="messageTh">글번호</th>
			<th id="messageThTitle">제목</th>
			<th id="messageTh">보낸사람</th>
			<th id="messageTh">보낸시간</th>			
			<th id="messageTh">확인시간</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="message" items="${list }">
		<tr id="messageTr">
			<td id="messageTd">${message.no }</td>
			<td id="messageTdTitle"><a href="view.do?no=${message.no }">${message.title }</a></td>
			<td id="messageTd">${message.name }</td>
			<td id="messageTd">${message.sdate }</td>
			<td id="messageTd">
			<c:if test="${message.rdate eq null}">미확인</c:if>
			<c:if test="${message.rdate ne null}">${message.rdate }</c:if>
			</td>
		</tr>
		</c:forEach>
<!-- 			반복의 끝 -->

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
	
<!-- 	검색 -->
<!-- 	<form action="list.do" method="post"> -->
<!-- 		<select name="option"> -->
<!-- 			<option>제목</option> -->
<!-- 			<option>내용</option> -->
<!-- 			<option>제목+내용</option> -->
<!-- 			<option>작성자</option> -->
<!-- 		</select> -->
<!-- 		<input type="text" name="searchStr"> -->
<!-- 		<button>검색</button> -->
<!-- 	</form> -->
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="../css/notice/list.css" rel="stylesheet" type="text/css" /> 

<title>공지사항 리스트</title>
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#listForm").submit(function(){
			if(confirm("정말 삭제하시겠습니까?")== false){
				return false; // 삭제 취소
			}
		});

	});
</script>
</head>
<body id="noticeBody">
	<h3>공지사항 리스트</h3>
	<form action="delete.do" method="post" id="listForm">
	<a href="write.do"><button type="button" id="noticeBtn">글쓰기</button></a>
	<button id="noticeDeleteBtn">선택 쪽지 삭제</button>
	
	<table id="noticeTable">
		<tr id="noticeTr">
			<th class="noticeTh">글번호</th>
			<th class="noticeTh">선택</th>
			<th id="noticeThTitle">제목</th>
			<th class="noticeTh">작성자</th>
			<th class="noticeTh">작성일</th>
			<th class="noticeTh">조회수</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="notice" items="${list }">
		<tr>
			<td class="noticeTd">${notice.no }</td>
			<td class="noticeTd">
			<input type="checkbox" name="nos" value="${notice.no}"
			<c:if test="${notice.writer ne login.id && login.pno < 9 }">disabled="disabled"</c:if>
			 /> 
			 </td>
			<td id="noticeTdTitle"><a href="view.do?no=${notice.no }&page=${jspData.page }">${notice.title }</a></td>
			<td class="noticeTd">${notice.name }</td>
			<td class="noticeTd">${notice.wdate }</td>
			<td class="noticeTd">${notice.hit }</td>
		</tr>
		</c:forEach> 
<!-- 			반복의 끝 -->
	</table>
	</form>
	
	
<!-- 		페이징 처리 -->
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
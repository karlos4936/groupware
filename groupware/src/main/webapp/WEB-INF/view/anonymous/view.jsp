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
<script type="text/javascript">
$(document).ready(function() {
	$(".replyUpdateForm").hide();
	
	$(".replyUpdate").click(function() {
		$(this).parent().parent().find(".replyView").hide();
		$(this).parent().parent().find(".replyUpdateForm").show();
	});
	
	$(".cancel").click(function() {
		$(this).parent().parent().parent().find(".replyUpdateForm").hide();
		$(this).parent().parent().parent().find(".replyView").show();
	});
});
</script>
</head>
<body>
	<h2>익명게시판 글보기</h2>
	
	<table>
		<tr>
			<th>글번호</th><td>${anonymous.no }</td>
		</tr>
		<tr>
			<th>제목</th><td>${anonymous.title }</td>
		</tr>
		<tr>
			<th>내용</th><td><pre>${anonymous.content }</pre></td>
		</tr>
		<tr>
			<th>작성자</th><td>${fn:substring(anonymous.writer, 0, 8) }</td>
		</tr>
		<tr>
			<th>작성일</th><td>${anonymous.wdate }</td>
		</tr>
		<tr>
			<th>조회수</th><td>${anonymous.hit }</td>
		</tr>
		<tr>
			<td colspan="2">
				<button onclick="location.href='update.do?no=${anonymous.no }'">글수정</button>
				<button onclick="location.href='delete.do?no=${anonymous.no }'">글삭제</button>
				<button onclick="location.href='list.do'">글리스트</button>
			</td>
		</tr>
	</table>
	
	<form action="reply/write.do" method="post">
		작성자 : <input type="text" readonly="readonly" value="${fn:substring(login.encId, 0, 8) }"><br>
		내용 : <textarea id="content" name="content" rows="7" cols="60"></textarea><br>
		<input type="hidden" name="writer" value="${login.encId }">
		<input type="hidden" name="no" value="${anonymous.no }">
		<button>댓글작성</button>
	</form>
	
	<c:if test="${reply ne null }">
		<ul>
			<c:forEach var="reply" items="${reply }">
				<li>
				
					<div class="replyView">
						작성자 : ${fn:substring(reply.writer, 0, 8) }<br>
						내용 : ${reply.content }<br>
						작성일 : ${reply.wdate }<br>
						<c:if test="${reply.writer eq login.encId }">
							<button class="replyUpdate">수정</button>&nbsp;
							<button onclick="location.href='reply/delete.do?rno=${reply.rno }&no=${reply.no }'">삭제</button>
						</c:if>
					</div>
					
					<div class="replyUpdateForm">
						<form action="reply/update.do" method="post">
							작성자 : <input type="text" readonly="readonly" value="${fn:substring(login.encId, 0, 8) }"><br>
							내용 : <textarea id="content" name="content" rows="7" cols="60">${reply.content }</textarea><br>
							<input type="hidden" name="writer" value="${login.encId }">
							<input type="hidden" name="rno" value="${reply.rno }">
							<input type="hidden" name="no" value="${reply.no }">
							<button>수정</button>&nbsp;<button type="button" class="cancel">취소</button>
						</form>
					</div>
					
				</li>
			</c:forEach>
		</ul>
	</c:if>
	
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				<a href="update.do?no=${anonymous.no }"><button>글수정</button></a>
				<a href="delete.do?no=${anonymous.no }"><button>글삭제</button></a>
				<a href="list.do"><button>글리스트</button></a>
			</td>
		</tr>
	</table>
	
	<form action="reply/write.do" method="post">
		아이디 : <input type="text" readonly="readonly" value="${fn:substring(login.encId, 0, 8) }"><br>
		내용 : <textarea id="content" name="content" rows="7" cols="60"></textarea><br>
		<input type="hidden" name="writer" value="${login.encId }">
		<input type="hidden" name="no" value="${anonymous.no }">
		<button>댓글작성</button>
	</form>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/notice/list.css" rel="stylesheet" type="text/css" /> 

<title>공지사항 리스트</title>
</head>
<body id="noticeBody">
	<h2>공지사항 리스트</h2>
	<table id="noticeTable">
			<tr>
			<td id="noticeBtnA" colspan="5">  
				<a href="write.do"><button id="noticeBtn">글쓰기</button></a>
			</td>
		</tr>
		<tr id="noticeTr">
			<th id="noticeTh">글번호</th>
			<th id="noticeThTitle">제목</th>
			<th id="noticeTh">작성자</th>
			<th id="noticeTh">작성일</th>
			<th id="noticeTh">조회수</th>
		</tr>
		<!-- 	반복 시작 :  -->
		<c:forEach var="notice" items="${list }">
		<tr>
			<td id="noticeTd">${notice.no }</td>
			<td id="noticeTdTitle"><a href="view.do?no=${notice.no }">${notice.title }</a></td>
			<td id="noticeTd">${notice.name }</td>
			<td id="noticeTd">${notice.wdate }</td>
			<td id="noticeTd">${notice.hit }</td>
		</tr>
		</c:forEach>
<!-- 			반복의 끝 -->
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
</head>
<body>
<h2>일정보기</h2>
<table>
	<tr>
		<th>번호</th><td>${schedule.no }</td>
	</tr>
	<tr>
		<th>제목</th><td>${schedule.title }</td>
	</tr>
	<tr>
		<th>등록일</th><td>${schedule.sdate }</td>
	</tr>
	<tr>
		<th>등록시간</th><td>${schedule.time } 시</td>
	</tr>
	<tr>
		<th>내용</th><td><pre>${schedule.content }</pre></td>
	</tr>
	<tr>
		<th>작성자</th><td><pre>${schedule.writer }</pre></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="update.do?no=${schedule.no }"><button>일정수정</button></a>
			<a href="delete.do?no=${schedule.no }"><button>일정삭제</button></a>
			<a href="list.do"><button>일정리스트</button></a>
		</td>
	</tr>
</table>
</body>
</html>
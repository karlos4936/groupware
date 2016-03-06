<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정관리</title>
<link href="../css/schedule/view.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>일정보기</h1>
<br/>
<table class="table_view">
	<tr class="num">
		<th>등록일</th><td>${schedule.sdate }</td>
	</tr>
	<tr class="num">
		<th>등록시간</th><td>${schedule.time } 시</td>
	</tr>
	<tr class="num">
		<th>제 목</th><td>${schedule.title }</td>
	</tr>
	<tr class="num">
		<th>내 용</th><td class="cont"><pre id="cont_pre">${schedule.content }</pre></td>
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
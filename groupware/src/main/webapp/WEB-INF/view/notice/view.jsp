<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글보기</title>
</head>
<body>
<h2>공지사항 글보기</h2>
<table>
	<tr>
		<th>글번호</th><td>${notice.no }</td>
	</tr>
		<tr>
		<th>제목</th><td>${notice.title}</td>
	</tr>
		<tr>
		<th>내용</th><td>${notice.content }</td>
	</tr>
		<tr>
		<th>작성자</th><td>${notice.writer }</td>
	</tr>
		<tr>
		<th>작성일</th><td>${notice.wdate }</td>
	</tr>
		<tr>
		<th>조회수</th><td>${notice.hit }</td>
	</tr>
		<tr>
		<th>업로드 파일</th><td><a href="../upload/notice/${notice.file_name}" target="_blank">${notice.file_name}</a></td>
	</tr>
	<tr>
		<td colspan="2">
		<a href="update.do?no=${notice.no }"><button>글수정</button></a>
		<a href="delete.do?no=${notice.no }"><button>글삭제</button></a>
		<a href="list.do?no=${notice.no }"><button>공지사항 리스트</button></a>
		
		</td>
	</tr>
</table>
</body>
</html>
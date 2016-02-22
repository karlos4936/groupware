<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자료게시판 글보기</h2>
	<table>
		<tr>
			<th>글번호</th><td>${data.no }</td>
		</tr>
		<tr>
			<th>제목</th><td>${data.title}</td>
		</tr>
		<tr>
			<th>내용</th><td>${data.content}</td>
		</tr>
		<tr>
			<th>첨부 파일</th><td><img alt="image" src="../upload/data/${data.imgFile }">
		</tr>
		<tr>
			<th>작성자</th><td>${data.writer }</td>
		</tr>
		<tr>
			<th>조회수</th><td>${data.hit }</td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="update.do?no=${data.no }"><button>글수정</button></a>
				<a href="delete.do?no=${data.no }"><button>글삭제</button></a>
				<a href="list.do"><button>글리스트</button></a>
			</td>
		</tr>
	</table>
</body>
</html>
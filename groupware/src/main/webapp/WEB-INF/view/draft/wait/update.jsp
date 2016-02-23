<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전자결재 문서 작성</h2>
	<form action="write.do" method="post">
		<label for="title">글제목</label><input id="title" name="title" value="${draft.title }"><br>	
		<label for="content">글내용</label><textarea id="content" name="content" rows="7" cols="60">${draft.content }</textarea><br>
		<label for="drafter">작성자</label><input id="drafter" name="drafter" value="${draft.drafter }"><br>
		<label for="signer1">결재자1</label><input id="signer1" name="signer1" value="${draft.signer1 }"><br>
		<label for="signer2">결재자2</label><input id="signer2" name="signer2" value="${draft.signer2 }"><br>
		<label for="signer3">결재자3</label><input id="signer3" name="signer3" value="${draft.signer3 }"><br>
		<button>작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>내 비밀번호 수정</h2>
	<form action="pwupdate.do" method="post">
		<label for="pw"></label>기존 비밀번호<input type="password" id="pw" name="pw" value="${login.pw }"/><br/>
		<label for="newPw"></label>새 비밀번호<input type="password" id="newPw" name="newPw"/><br/>
		<label for="newPw2"></label>새 비밀번호 확인<input type="password" id="newPw2" name="newPw2"/><br/>
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
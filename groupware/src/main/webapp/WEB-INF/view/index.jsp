<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인 화면</h2>
	<form action="index.do" method="post">
		<label for="id">사원번호(아이디)</label><input type="text" id="id" name="id"/><br/>
		<label for="pw">비밀번호</label><input type="password" id="pw" name="pw"><br/>
		<button>로그인</button>
	</form>
</body>
</html>
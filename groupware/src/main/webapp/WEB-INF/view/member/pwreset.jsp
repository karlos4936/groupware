<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원 비밀번호 수정</h2>
	<form action="pwreset.do" method="post">
<%-- 		<label for="id"></label>사원번호(ID):${member.id }<br/> --%>
<%-- 		<label for="name"></label>이름:${member.name }<br/> --%>
		<label for="pw"></label>비밀번호<input type="password" id="pw" name="pw"/> <br/>
		<input type="hidden" name="id" value="${member.id}">
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>

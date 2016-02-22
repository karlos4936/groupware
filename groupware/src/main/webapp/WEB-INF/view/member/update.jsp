<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원 정보 수정</h2>
	<form action="update.do" method="post">
		<label for="id"></label><input type="text" id="id" name="id" value="${member.id }" readonly="readonly"/><br/>
		<label for="name"></label><input type="text" id="name" name="name" value="${member.name }"/> <br/>
		<label for="dep"></label><input type="text" id="dep" name="dep" value="${member.dep }"/><br/>
		<label for="position"></label><input type="text" id="position" name="position" value="${member.position }"/><br/>
		<label for="manager"></label><input type="text" id="manager" name="manager" value="${member.manager }"/><br/>
		<label for="tel"></label><input type="text" id="tel" name="tel" value="${member.tel }"/><br/>
		<label for="phone"></label><input type="text" id="phone" name="phone" value="${member.phone }"/><br/>
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
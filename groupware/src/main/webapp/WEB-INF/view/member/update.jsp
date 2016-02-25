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
		<label for="id"></label>사원번호(ID)<input type="text" id="id" name="id" value="${member.id }" readonly="readonly"/><br/>
		<label for="name"></label>이름<input type="text" id="name" name="name" value="${member.name }"/> <br/>
		<label for="pw"></label>비밀번호<input type="text" id="pw" name="pw"/> <br/>
		<label for="dep"></label>소속 부서<input type="text" id="dep" name="dep" value="${member.dep }"/><br/>
		<label for="position"></label>직위<input type="text" id="position" value="${member.position }"/><br/>
		<label for="manager"></label>매니저<input type="text" id="manager" name="manager" value="${member.manager }"/><br/>
		<label for="tel"></label>전화번호<input type="text" id="tel" name="tel" value="${member.tel }"/><br/>
		<label for="phone"></label>핸드폰<input type="text" id="phone" name="phone" value="${member.phone }"/><br/>
		<input type="hidden" id="pno" name="pno" value="${member.pno }" />
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
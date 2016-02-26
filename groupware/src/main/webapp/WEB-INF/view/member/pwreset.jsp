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
	<form action="pwreset.do" method="post">
		<label for="id"></label>사원번호(ID)<input type="text" id="id" name="id" value="${member.id }" readonly="readonly"/><br/>
		<label for="name"></label>이름<input type="text" id="name" name="name" value="${member.name }" readonly="readonly"/> <br/>
		<label for="pw"></label>비밀번호<input type="text" id="pw" name="pw"/> <br/>
				<input type="hidden" id="pno" name="pno" value="${member.pno }" />
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
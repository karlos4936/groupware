<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원 등록</h2>
	<form action="write.do" method="post">
		<label for="id">사원ID</label><input type="text" name="id" id="id"/><br/>
		<label for="pw">비밀번호</label><input type="password" name="pw" id="pw"/><br/>
		<label for="name">이름</label><input type="text" id="name" name="name"/> <br/>
		<label for="dep">소속 부서</label><input type="text" id="dep" name="dep"/><br/>
		<label for="position">직위번호</label><input type="text" id="pno" name="pno"/><br/>
		<label for="manager">매니저</label><input type="text" id="manager" name="manager"/><br/>
		<label for="tel">전화번호</label><input type="text" id="tel" name="tel"/><br/>
		<label for="phone">핸드폰</label><input type="text" id="phone" name="phone"/><br/>
		<button>등록</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
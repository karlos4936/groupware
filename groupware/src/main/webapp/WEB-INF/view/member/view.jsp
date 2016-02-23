<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사원 정보 보기</h2>
	<form action="delete.do" method="post">
	<table>
		<tr>
			<th>사원ID</th>
			<td>${member.id}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${member.name}</td>
		</tr>
		<tr>
			<th>소속 부서</th>
			<td>${member.dep}</td>
		</tr>
		<tr>
			<th>직위</th>
			<td>${member.position}</td>
		</tr>
		<tr>
			<th>매니저</th>
			<td>${member.manager}</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${member.tel}</td>
		</tr>
		<tr>
			<th>핸드폰</th>
			<td>${member.phone}</td>
		</tr>
		<tr>
			<td colspan="2">
			<a href="update.do?id=${member.id }"><button>사원정보 변경</button></a>
			<a href="delete.do?id=${member.id }"><button>사원 탈퇴</button></a>
			<a href="list.do"><button>사원 리스트로</button></a>
			<td>
		</tr>
	</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/common/util.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
// 		alert("test");
// '사원 탈퇴' 버튼을 누르면 정말 탈퇴시키겠냐는 확인 창.
	$("#deleteBtn").click(function(){
		if(confirm("사원을 정말 삭제하시겠습니까?"))
			alert("삭제되었습니다");
		else alert("삭제되지 않았습니다");
	});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<h2>사원 정보 보기</h2>
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
			<a href="delete.do?id=${member.id }"><button id="deleteBtn">사원 탈퇴</button></a>
			<a href="list.do"><button>사원 리스트로</button></a>
			<td>
		</tr>
	</table>
</body>
</html>
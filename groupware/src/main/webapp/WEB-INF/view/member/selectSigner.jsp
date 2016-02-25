<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#signer").click(function() {
		var returnValue = {
			id: $(this).find("#id").text(),
			name: $(this).find("#name").text(),
		};
		window.opener.getReturnValue(JSON.stringify(returnValue));
		window.close();
	});
});

</script>
</head>
<body>
<h2>사원 리스트</h2>

	<table>
		<tr>
			<th>사원ID</th>
			<th>이름</th>
			<th>소속 부서</th>
			<th>직위</th>
		</tr>
		<c:forEach var="member" items="${list }">
		<tr id="signer">
			<td id="id">${member.id }</td>
			<td id="name">${member.name }</td>
			<td>${member.dep }</td>
			<td>${member.position }</td>
			<td><button id="returnButton">선택</button></td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>
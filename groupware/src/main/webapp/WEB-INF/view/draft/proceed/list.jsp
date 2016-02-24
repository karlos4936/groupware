<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

table th, table td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<h2>전자결재 진행문서</h2>
	
	<table>
		<tr>
			<th>no</th>
			<th>title</th>
			<th>drafter</th>
			<th>signer1</th>
			<th>signer2</th>
			<th>signer3</th>
			<th>issign1</th>
			<th>issign2</th>
			<th>issign3</th>
			<th>redgate</th>
		</tr>
		
		<c:forEach var="draft" items="${list }">
			<tr>
				<td>${draft.no }</td>
				<td><a href="view.do?no=${draft.no}" >${draft.title }</a></td>
				<td>${draft.drafter }</td>
				<td>${draft.signer1 }</td>
				<td>${draft.signer2 }</td>
				<td>${draft.signer3 }</td>
				<td>${draft.isSign1 }</td>
				<td>${draft.isSign2 }</td>
				<td>${draft.isSign3 }</td>
				<td>${draft.regDate }</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>
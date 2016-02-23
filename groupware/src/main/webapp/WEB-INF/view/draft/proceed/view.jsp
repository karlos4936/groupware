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
	<h2>전자결재 진행문서 보기</h2>
	
	<table>
		<tr>
			<th>no</th>
			<td>${draft.no }</td>
		</tr>
		<tr>
			<th>title</th>
			<td>${draft.title }</td>
		</tr>
		<tr>
			<th>content</th>
			<td><pre>${draft.content}</pre></td>
		</tr>
		<tr>	
			<th>drafter</th>
			<td>${draft.drafter }</td>
		</tr>
		<tr>
			<th>signer1</th>
			<td>${draft.signer1 }</td>
		</tr>
		<tr>
			<th>signer2</th>
			<td>${draft.signer2 }</td>
		</tr>
		<tr>
			<th>signer3</th>
			<td>${draft.signer3 }</td>
		</tr>
		<tr>
			<th>issign1</th>
			<td>${draft.isSign1 }</td>
		</tr>
		<tr>
			<th>issign2</th>
			<td>${draft.isSign2 }</td>
		</tr>
		<tr>
			<th>issign3</th>
			<td>${draft.isSign3 }</td>
		</tr>
		<tr>
			<th>redgate</th>
			<td>${draft.regDate }</td>
		</tr>
		<tr>
			<th>signdate</th>
			<td>${draft.signDate }</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<button>결재</button>
			</td>
		</tr>
		
	</table>
	
</body>
</html>
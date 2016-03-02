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
			<td>${draft.content}</td>
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

		<c:choose>
			<c:when test="${( login.id eq draft.signer1 ) ||
							( (login.id eq draft.signer2) && (!empty draft.isSign2) ) ||
							( (login.id eq draft.signer3) && (!empty draft.isSign3) ) }" />
			<c:otherwise>
				<tr>
					<td colspan="2">
						<form action="sign.do" method="post">
							<input type="hidden" name="no" value="${draft.no }">
							<input type="hidden" name="drafter" value="${login.id }">
							<input type="hidden" name="signer2" value="${draft.signer2 }">
							<input type="hidden" name="signer3" value="${draft.signer3 }">
							<button>결재</button>
						</form>
					</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
	</table>
	
</body>
</html>
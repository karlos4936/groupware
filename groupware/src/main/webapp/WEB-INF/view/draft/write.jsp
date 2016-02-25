<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function openNewWindow(url) {
	var name = '_blank';
	var specs = 'menubar=no,status=no,toolbar=no';
	var newWindow = window.open(url, name, specs);
	newWindow.focus();
}

function getReturnValue(returnValue) {
	alert(returnValue);
// 	alert(returnValue.name);
// 	alert(returnValue.id);
	$("#signerName2").val(returnValue.name);
	$("#signer2").val(returnValue.id);
}

$("#signer2").focus(function() {
	openNewWindow('../member/selectSigner.do');
});

</script>
</head>
<body>
	<h2>전자결재 문서 작성</h2>
	<form action="write.do" method="post">
		<label for="title">글제목</label><input id="title" name="title"><br>	
		<label for="content">글내용</label><textarea id="content" name="content" rows="7" cols="60"></textarea><br>
		<label for="drafter">작성자</label><input id="drafter" value="${login.name }" readonly="readonly"><br>
		
		<label for="signer1">결재자1</label><input id="signer1" value="${login.name }" readonly="readonly"><br>
		
		<label for="signer2">결재자2</label><input id="signerName2">
		<button type="button" onclick="javascript:openNewWindow('../member/selectSigner.do')">결재자 선택</button><br>
		
		<label for="signer3">결재자3</label><input id="signerName3">
		<button type="button" onclick="javascript:openNewWindow('../member/selectSigner.do')">결재자 선택</button><br>
		
		<input type="hidden" name="drafter" value="${login.id }">
		<input type="hidden" id="signer2" name="signer2">
		<input type="hidden" id="signer3" name="signer3">
		
		<button>작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
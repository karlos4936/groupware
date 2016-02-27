<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript">

var num = 0;

function getReturnValue(returnValue) {
	if(num == 2) {
		$("#signerName2").val(returnValue.name);
		$("#signer2").val(returnValue.id);
	}
	else if(num == 3) {
		$("#signerName3").val(returnValue.name);
		$("#signer3").val(returnValue.id);
	}
	$(".signerName").blur();
}

function openNewWindow() {
	var url = "../../member/selectSigner.do";
 	var name = "_blank";
 	var specs = "menubar=no,status=no,toolbar=no";
 	var newWindow = window.open(url, name, specs);
 	newWindow.focus();
}

$(document).ready(function() {
	$(".signerName").focus(function() {
	 	if(this.id == "signerName2")
	 		num = 2;
	 	else
	 		num = 3;
	 	openNewWindow();
	});
});

</script>
</head>
<body>
	<h2>전자결재 문서 수정</h2>
	<form action="update.do" method="post">
		<label for="title">글제목</label><input id="title" name="title" value="${draft.title }"><br>	
		<label for="content">글내용</label><textarea id="content" name="content" rows="7" cols="60">${draft.content }</textarea><br>
		<label for="drafter">작성자</label><input id="drafter" name="drafter" value="${draft.drafter }"><br>
		
		<label for="signer1">결재자1</label><input id="signer1" name="signer1" value="${draft.signer1 }"><br>
		<label for="signer2">결재자2</label><input id="signerName2" class="signerName" value="${draft.signerName2 }"><br>
		<label for="signer3">결재자3</label><input id="signerName3" class="signerName" value="${draft.signerName3 }"><br>
		
		<input type="hidden" name="no" value="${draft.no }">
		<input type="hidden" name="drafter" value="${login.id }">
		<input type="hidden" id="signer2" name="signer2" value="${draft.signer2 }">
		<input type="hidden" id="signer3" name="signer3" value="${draft.signer3 }">
		
		<button>작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
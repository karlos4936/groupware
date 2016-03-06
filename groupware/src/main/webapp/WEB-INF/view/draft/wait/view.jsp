<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../../js/draft/view.js"></script>
<link rel="stylesheet" type="text/css" href="../../css/draft/common.css" />
<link rel="stylesheet" type="text/css" href="../../css/draft/view.css" />
<title>전자결재</title>
</head>
<body>
	<div class="body">
		<iframe src="../../viewContent/viewContent.do?no=${draft.no }" id="ifrm" style="width: 100%; height: 100%; min-height: 1500px; border: 0;"></iframe>
		<input type="hidden" id="no" value="${draft.no }">
		<input type="hidden" id="title" value="${draft.title }">
		<input type="hidden" id="drafter" value="${draft.drafter }">
		<input type="hidden" id="signer1" value="${draft.signer1 }">
		<input type="hidden" id="signer2" value="${draft.signer2 }">
		<input type="hidden" id="signer3" value="${draft.signer3 }">
		<input type="hidden" id="isSign1" value="${draft.isSign1 }">
		<input type="hidden" id="isSign2" value="${draft.isSign2 }">
		<input type="hidden" id="isSign3" value="${draft.isSign3 }">
		
		<button onclick="location.href='sign.do?no=${draft.no }'">결재</button>
		<button onclick="location.href='update.do?no=${draft.no }'">수정</button>
		<button onclick="location.href='delete.do?no=${draft.no }'">삭제</button>
	
	</div>
	
</body>
</html>
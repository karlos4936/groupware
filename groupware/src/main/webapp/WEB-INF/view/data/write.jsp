<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/common/util.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$("#form").submit(function() {
			//데이터 검사 - 1. ID
			if ($("#title").val() == "") {
				alert("제목을 입력하셔야 합니다.");
				// 커서를 제목칸에 위치시키기
				$("#title").focus();
				return false;
			}
			// 데이터 검사 - 2. 내용
			if ($("#content").val() == "") {
				alert("내용을 입력하셔야 합니다.");
				// 커서를 내용칸에 위치시키기
				$("#content").focus();
				return false;
			}
		});

	});
</script>
</head>
<body>
	<h2>자료게시판 글쓰기</h2>
	<form id="form" action="write.do" method="post" enctype="multipart/form-data">
		<label for="title">글제목</label><input type="text" name="title" id="title"/><br/>
		<label for="content">글내용</label><textarea rows="7" cols="60" name="content" id="content"></textarea><br/>
		<label for="writer">작성자</label><input value="${login.name }" readonly="readonly"/><br/>
		<label for="file">첨부 파일</label><input type="file" name="file" id="file"/><br/>
		<input type="hidden" id="writer" name="writer" value="${login.id }"/>
		<button>작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
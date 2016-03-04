<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link href="../css/board/update.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/common/util.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	$("#updateForm").submit(function(){
		if (isEmpty("#title", "제목을 작성하세요."))
			return false;
		if (isEmpty("#content", "내용을 작성하세요."))
			return false;
		});
	});
</script>
</head>
<body id="updateBody">
<h1>자유게시판 글수정</h1>
<br/>
<form action="update.do" method="post" id="updateForm">
<fieldset id="boardUpdateField">
	<ul id="updateUl">
		<li id="updateLi">
		<input type="hidden" name="no" value="${board.no }"/>
		</li>
		
		<li id="updateLi">
		<label for="title">글제목</label><input type="text" name="title" id="title" value="${board.title }"/><br/>
		</li>
		
		<li id="updateLi">
		<label for="content" id="cont">글내용</label>
		<textarea rows="7" cols="60" name="content" id="content">${board.content}</textarea><br/>
		</li>
		
		<li id="updateLi">
		<label for="writer">작성자</label><input type="text" value="${login.name }" readonly="readonly"/><br/>
		<input type="hidden" name="writer" value="${login.id }">
		</li>
		
		<li id="updateLi">
		<button>수정</button>
		<button type="button" onclick="history.back()">취소</button>
	</li>
	</ul>
	</fieldset>
</form>
</body>
</html>
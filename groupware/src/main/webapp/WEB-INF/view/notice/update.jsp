<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글수정</title>
<link href="../css/notice/update.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>공지사항 글수정</h2>
<div id="noticeUpdateDiv">
<form action="update.do" method="post" enctype="multipart/form-data">
	<button id="noticeBtn" type="submit">수정</button>
	<button id="noticeBtn" type="button" onclick="history.back()">취소</button><br/>
	
	<ul id="noticeUl">
	<li>
	<input type="hidden" name="no" value="${notice.no }" />
	<label for="title">글제목</label><input type="text" name="title" id="title" value="${notice.title }"/><br/>
	</li>
	<li>
	<label for="content">글내용</label><textarea rows="7" cols="60" name="content">${notice.content }</textarea>
	</li>
	<li>
	<label for="writer">작성자</label><input type="text" name="writer" value="${notice.writer }" readonly="readonly"/><br/>
	</li>
	<li>
	<label for="file">파일첨부</label><input type="file" id="file" name="file1"><br/>
	</li>
	<c:if test="${!empty notice.fileName }">
		<li>
		<label for="fileName">첨부된 파일 : </label><span id="fileName">${notice.fileName }</span>
		</li>
	</c:if>
	
	</ul>
</form>
</div>
</body>
</html>
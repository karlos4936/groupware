<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글쓰기</title>
<link href="../css/notice/write.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h2>공지사항 글쓰기</h2>
<!-- 반드시 post! update후에는 redirect를 통해 view.do로 간다. -->

<div id="noticeWriteDiv">
<form id="noticeForm" action="write.do" method="post" enctype="multipart/form-data">
<button id="noticeBtn" type="submit">작성</button>
<!-- 클릭만 되고 submit이 일어나지 않게 type을 button으로 지정한다. -->
<button type="button" onclick="history.back()">취소</button>	


<ul id="noticeUl">
<li id="noticeLi">
	<label for="title">제목</label><input type="text" name="title" id="title" />
</li>
<li id="noticeLi">
	<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content" ></textarea>
</li>
<li id="noticeLi">
	<label for="writer">작성자</label><input type="text" value="${login.id }" />
	<input type="hidden" id="writer" name="writer" value="${login.id }">
</li>
<li id="noticeLi">
	<label for="fileName">파일첨부</label><input type="file" name="file1">
</li>
</ul>

</form>
</div>


</body>
</html>
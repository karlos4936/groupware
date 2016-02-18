<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글쓰기</title>
</head>
<body>
<h2>공지사항 글쓰기</h2>
<!-- 반드시 post! update후에는 redirect를 통해 view.do로 간다. -->
<form action="write.do" method="post">
	<label for="title">제목</label><input type="text" name="title" id="title" /><br/>
	<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content" >${notice.content }</textarea><br/>
	<label for="writer">작성자</label><input type="text" name="writer" id="writer" value="${notice.writer }" readonly="readonly"/><br/>

<button>수정</button>
<!-- 클릭만 되고 submit이 일어나지 않게 type을 button으로 지정한다. -->
<button type="button" onclick="history.back()">취소</button>
</form>

</body>
</html>
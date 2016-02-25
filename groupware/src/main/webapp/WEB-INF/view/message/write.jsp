<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지 보내기</title>
</head>
<body>
<h2>쪽지 보내기</h2>
<!-- 반드시 post! update후에는 redirect를 통해 view.do로 간다. -->
<form action="write.do" method="post" enctype="multipart/form-data">
	<label for="title">제목</label><input type="text" name="title" id="title" /><br/>
	<label for="content">내용</label><textarea rows="7" cols="60" name="content" id="content" ></textarea><br/>
	<label for="sender">보낸사람</label><input type="text" value="${login.id }"/><br/>
	<label for="receiver">받는사람</label><input type="text" name="receiver" id="receiver" /><br/>
	<label for="fileName">파일첨부</label><input type="file" name="file1"><br/>
		<input type="hidden" name="sender" id="sender" value="${login.id }">
	
<button type="submit">전송</button>
<!-- 클릭만 되고 submit이 일어나지 않게 type을 button으로 지정한다. -->
<button type="button" onclick="history.back()">취소</button>
</form>

</body>
</html>
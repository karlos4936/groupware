<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/message/write.css" rel="stylesheet" type="text/css" />
<title>쪽지 보내기</title>
<script type="text/javascript">
alert("jquery 안먹히네!@");
	$(document).ready(function(){
		alert("먹혀");
	});
</script>
</head>
<body id="messageBody">
<h2>쪽지 보내기</h2>
<!-- 반드시 post! update후에는 redirect를 통해 view.do로 간다. -->

<div id="messageWriteDiv">
<form id="messageForm" action="write.do" method="post" enctype="multipart/form-data">

<button id="messageBtn" type="submit">전송</button>
<!-- 클릭만 되고 submit이 일어나지 않게 type을 button으로 지정한다. -->
<button id="messageBtn" type="button" onclick="history.back()">취소</button><br/><br/>
<fieldset id="messageWriteField">
<ul id="messageUl">
<li id="messageLi">
	<label for="title">제목</label><input type="text" name="title" id="title" required="required" /><br/>
</li>
<li id="messageLi">
	<label for="content">내용</label><textarea style="resize:none;" rows="15" cols="90" name="content" id="content" required="required"></textarea><br/>
</li>
<li id="messageLi">
	<label for="sender">보낸사람</label><input type="text" value="${login.id }" required="required"/><br/>
</li>
<li id="messageLi">
	<label for="receiver">받는사람</label><input type="text" name="receiver" id="receiver" required="required"/><br/>
</li>
<li id="messageLi">
	<label for="fileName">파일첨부</label><input type="file" name="file1"><br/>
		<input type="hidden" name="sender" id="sender" value="${login.id }">
</li>
</ul>
</fieldset>
</form>
</div>

</body>
</html>
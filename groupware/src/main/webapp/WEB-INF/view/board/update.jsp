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
	$(function() {
	    $('.remaining').each(function() {
	        // count 정보 및 count 정보와 관련된 textarea/input 요소를 찾아내서 변수에 저장한다.
	        var $count = $('.count', this);
	        var $input = $(this).prev();
	        // .text()가 문자열을 반환하기에 이 문자를 숫자로 만들기 위해 1을 곱한다.
	        var maximumCount = $count.text() * 1;
	        // update 함수는 keyup, paste, input 이벤트에서 호출한다.
	        var update = function() {
	            var before = $count.text() * 1;
	            var now = maximumCount - $input.val().length;
	            // 사용자가 입력한 값이 제한 값을 초과하는지를 검사한다.
	            if (now < 0) {
	                var str = $input.val();
	                alert('글자 입력수가 초과하였습니다.');
	                $input.val(str.substr(0, maximumCount));
	                now = 0;
	            }
	            // 필요한 경우 DOM을 수정한다.
	            if (before != now) {
	                $count.text(now);
	            }
	        };
	        // input, keyup, paste 이벤트와 update 함수를 바인드한다
	        $input.bind('input keyup paste', function() {
	            setTimeout(update, 0)
	        });
	        update();
	    });
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
		<textarea rows="7" cols="60" name="content" id="content">${board.content}</textarea>
		<div class="remaining">남은 글자수: <span class="count">850</span></div>
		</li>
		
		<li id="updateLi">
		<label for="writer">작성자</label><input type="text" value="${login.name }" readonly="readonly"/><br/>
		<input type="hidden" name="writer" value="${login.id }">
		</li>
	</ul>
		<div id="Btn">
		<button id="submit_Btn">수정</button>
		<button  id="cancer_Btn" type="button" onclick="history.back()">취소</button>
		</div>
	</fieldset>
</form>
</body>
</html>
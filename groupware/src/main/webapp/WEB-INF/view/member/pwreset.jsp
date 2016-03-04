<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="../css/member/pwreset.css" rel="stylesheet" type="text/css" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="pwresetDiv">
<h2>사원 비밀번호 수정</h2>
	<div id="formDiv">
	<form id="form" action="pwreset.do" method="post">
		<fieldset id="formField">
			<ul>
				<li><label for="id">사원번호(ID)</label><input type="text" id="id" name="id" value="${member.id }" readonly="readonly"></li>
				<li><label for="name">이름</label><input type="text" id="name" name="name" value="${member.name }" readonly="readonly"></li>
				<li><label for="pw">비밀번호</label><input type="password" id="pw" name="pw"/> </li>
				<li><input type="hidden" name="id" value="${member.id}"></li>
			</ul>
			
				<button type="button" onclick="history.back()">취소</button>
				<button>변경</button>
		</fieldset>
	</form>
	</div>
	</div>
</html>

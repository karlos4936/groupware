<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="../css/mypage/update.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
<div id="updateDiv">
<h2>내 정보 수정</h2>
	<div id="formDiv">
	
		<form id="form" action="update.do" method="post">
			<fieldset id="formField">
			<ul>
				<li><label for="id">사원번호(ID)</label><input type="text" id="id" name="id" value="${login.id }" readonly="readonly"/></li>
				<li><label for="name">이름</label><input type="text" id="name" name="name" value="${login.name }" readonly="readonly"/> </li>
				<li><label for="dep">소속 부서</label><input type="text" id="dep" name="dep" value="${member.dep }" readonly="readonly"/></li>
				<li><label for="position">직위</label><input type="text" id="position" name="position" value="${member.position}" readonly="readonly"/></li>
				<li><label for="manager">매니저</label><input type="text" id="manager" name="manager" value="${member.manager }" readonly="readonly"/></li>
				<li><label for="tel">전화번호</label><input type="text" id="tel" name="tel" value="${member.tel }"/></li>
				<li><label for="phone">핸드폰</label><input type="text" id="phone" name="phone" value="${member.phone }"/></li>
			</ul>
				<button type="button" onclick="history.back()">취소</button>
				<button>변경</button>
	
		</fieldset>
	</form>
</div>
</div>
</body>
</html>
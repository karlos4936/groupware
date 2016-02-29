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
	$(document).ready(function(){
		
		$("#form1").submit(function() {
			switch($("#pnoSel").val()) {
			case "인턴":
				$("#pno").val(1);
				break;
			case "사원":
				$("#pno").val(2);
				break;
			case "대리":
				$("#pno").val(3);
				break;
			case "과장":
				$("#pno").val(4);
				break;
			case "차장":
				$("#pno").val(5);
				break;
			case "부장":
				$("#pno").val(6);
				break;
			case "본부장":
				$("#pno").val(7);
				break;
			case "사장":
				$("#pno").val(8);
				break;
			case "관리자":
				$("#pno").val(9);
				break;
			}
			
		// 데이터 검사 - 1. 이름
		if($("#name").val()==""){
			alert("이름을 입력하셔야 합니다.");
			$("#name").focus();
			return false;
		}

		// 데이터 검사 - 2. 매니저
		if($("#manager").val()==""){
			alert("매니저를 입력하셔야 합니다.");
			$("#manager").focus();
			return false;
		}
	});
	});
</script>
</head>
<body>
<h2>사원 정보 수정</h2>
	<form id="form1" action="update.do" method="post">
		<label for="id"></label>사원번호(ID)<input type="text" id="id" name="id" value="${member.id }" readonly="readonly"/><br/>
		<label for="name"></label>이름<input type="text" id="name" name="name" value="${member.name }"/> <br/>
		
		<label for="dep">소속부서</label>
		<select id="dep" name="dep">
			<option>${member.dep }</option>
			<option>마케팅</option>
			<option>재무</option>
			<option>개발</option>
			<option>인사</option>
			<option>경영지원</option>
			<option>기획</option>
			<option>영업</option>
			<option>영업지원</option>
		</select><br/>
		
			
		<label for="pnoSel">직위번호</label>
		<select id="pnoSel">
			<option>${member.position }</option>
			<option>인턴</option>
			<option>사원</option>
			<option>대리</option>
			<option>과장</option>
			<option>차장</option>
			<option>부장</option>
			<option>본부장</option>
			<option>사장</option>
			<option>관리자</option>
		</select>
		<br/>
		
		<input type="hidden" id="pno" name="pno">
		
		<label for="manager"></label>매니저<input type="text" id="manager" name="manager" value="${member.manager }"/><br/>
		<label for="tel"></label>전화번호<input type="text" id="tel" name="tel" value="${member.tel }"/><br/>
		<label for="phone"></label>핸드폰<input type="text" id="phone" name="phone" value="${member.phone }"/><br/>
		<input type="hidden" id="pno" name="pno" value="${member.pno }" />
		<button>변경</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/common/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../SE/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="../SE/SE.js"></script>
<script type="text/javascript" src="../js/draft/draft.js"></script>
</head>
<body>
	<form action="write.do" method="post" id="form1">
		<label for="title">글제목</label><input id="title" id="title" name="title"><br>
		
		<label for="drafter">작성자</label><input id="drafter" value="${login.name }" readonly="readonly"><br>
		<label for="dep">부서</label><input id="dep" name="dep" value="${login.dep }" readonly="readonly"><br>
		
		<label for="signer1">결재자1</label><input id="signer1" value="${login.name }" readonly="readonly"><br>
		
		<label for="signer2">결재자2</label><input id="signerName2" class="signerName" placeholder="결재자 선택"><br>
		<label for="signer3">결재자3</label><input id="signerName3" class="signerName" placeholder="결재자 선택"><br>
		
		<button type="button" id="text">양식 불러오기</button>
		
		
	    <textarea name="content" id="content" style="width:824px; height:1157px;"></textarea>
	    
	    
		<input type="hidden" name="drafter" value="${login.id }">
		<input type="hidden" id="signer2" name="signer2">
		<input type="hidden" id="signer3" name="signer3">
		
		<button id="submit">작성</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>

<!--
------------------------------------------------------ 
This Application includes SmartEditor Basic. 
SmartEditor Basic contains the following license and notice below: 
  
Copyright (c) 2008 NHN Corp 
This library is free software; you can redistribute it and/or 
modify it under the terms of the GNU Library General Public 
License as published by the Free Software Foundation; either 
version 2 of the License, or (at your option) any later version. 

This library is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
Library General Public License for more details. 

You should have received a copy of the GNU Library General Public 
License along with this library; if not, write to the 
Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, 
Boston, MA 02110-1301, USA. 
------------------------------------------------------ 
-->
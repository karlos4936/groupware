<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="shortcut icon" type="image/x-icon" href="../favicon.png"> -->
<!-- <link rel="icon" type="image/x-icon" href="../favicon.png"> -->
<!-- <link rel="stylesheet" type="text/css" href="../decorator/decorator.css"> -->
<!-- <script type="text/javascript" src="../js/jquery.js"></script> -->
<script type="text/javascript">
// $(document).ready(function() {
// 	$("#logoutBtn").click(function() {
// 		if(confirm("로그아웃하시겠습니까?"))
// 			window.location = "../member/logoutProcess.jsp";
// 	});
// });
</script>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

* {
	margin: 0 auto;
	-webkit-box-sizing: border-box;
	   -moz-box-sizing: border-box;
			box-sizing: border-box;
	font-family: "Nanum Gothic", "sans-serif";
}

html {
	height: calc(100% - 40px);
}

body {
	height: 100%;
}

#wrapper {
	height: 100%;
}

#header {
	height: 40px;
	background: #606060;
}

	#main_title {
		width: 200px;
		height: 100%;
		float: left;
		font-family: "Hanna", "Nanum Gothic", "sans-serif";
		font-size: 20pt;
		color: #edd200;
		padding: 7px 20px;
		border-right: 1px solid #969696;
		border-bottom: 1px solid #969696;
	}
	
	#nav {
		text-align: center;
		font-weight: bolder;
	}
	
		#nav ul {
			list-style: none;
		}
		
			#nav ul li {
				float: left;
				width: 100px;
				height: 40px;
				border-right: 1px solid #969696;
			}
			
				#nav ul li a {
					display: block;
					width: 100%;
					height: 100%;
					text-decoration: none;
					color: #ffffff;
					padding-top: 10px;
				}
				
				#nav ul li a:visited {
					color: #ffffff;
				}
				
				#nav ul li a:hover {
					background: #969696;
				}

#side_left {
	width: 200px;
	height: 100%;
	clear: both;
	float: left;
	background: #606060;
}

	#side_left ul {
		list-style: none;
	}

#content_wrapper {
	margin-left: 200px;
 	width: calc(100% - 200px);
 	height: calc(100% - 30px);
 	padding: 10px;
}

#footer {
	height: 30px;
	border : 1px solid #969696;
	text-align: center;
}
</style>
<title>그룹웨어 시스템 - <decorator:title /></title>
<decorator:head />
</head>
<body>

<div id="wrapper">
	<div id="header">
		<div id="main_title">
			그룹웨어 시스템
		</div>
		<div id="nav">
			<ul>
				<li>사원관리</li>
				<li><a href="../member/list.do">사원 목록</a></li>
				<li><a href="../member/write.do">사원 가입</a></li>
				<li><a href="../member/delete.do">사원 탈퇴</a></li>
			</ul>
		</div>
	</div>
	
	<div id="side_left">
		<ul>
			<li>일정관리</li>
			<li><a href="../schedule/list.do">월간일정</a></li>
		</ul>
	</div>
	
	<div id="content_wrapper">
		<decorator:body />
	</div>
	
	<div id="footer">
		Copyright ⓒ ~~~~~
	</div>
</div>

<!-- <div id="wrapper"> -->
<!-- 	<header> -->
<!-- 		<div id="main_title"> -->
<!-- 			<a href="../index.jsp"><span>오늘의 맛집</span></a> -->
<!-- 		</div> -->
<!-- 		<div id="main_nav"> -->
<!-- 			<a href="../notice/list.jsp">오늘의 맛집</a> -->
<!-- 			<a href="../board/list.jsp">맛집 이야기</a> -->
<!-- 			<a href="../qna/list.jsp">QnA</a> -->
			
<%-- 			<c:if test="${!empty id }"> --%>
<%-- 				<c:choose> --%>
<%-- 					<c:when test="${grade eq 1 }"> --%>
<!-- 						<a href="../member/mypage.jsp">마이페이지</a> -->
<%-- 					</c:when> --%>
<%-- 					<c:when test="${grade eq 9 }"> --%>
<!-- 						<a href="../member/list.jsp">회원관리</a> -->
<%-- 					</c:when> --%>
<%-- 				</c:choose> --%>
<%-- 			</c:if> --%>
			
<!-- 		</div> -->
		
<!-- 		<div id="login_div"> -->
	
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${!empty name }"> --%>
<!-- 				<a id="logoutBtn"> -->
<%-- 				<span id="logout">${name }</span> --%>
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
<%-- 				<a href="../member/login.jsp?url=<%= request.getRequestURI() %>"> --%>
<!-- 				<span id="login">로그인</span> -->
<%-- 			</c:otherwise> --%>
<%-- 		</c:choose> --%>
	
<!-- 		<img id="login_img" src="../img/login.png"> -->
<!-- 		</a> -->
		
<!-- 	</div> -->
<!-- 	</header> -->
	
<!-- 	<div id="content_wrapper"> -->
<%-- 		<decorator:body /> --%>
<!-- 	</div> -->
	
<!-- 	<footer> -->
<!-- 		ⓒ Copyright 2016 Today's Restaurant -->
<!-- 	</footer> -->
<!-- </div> -->

</body>
</html>
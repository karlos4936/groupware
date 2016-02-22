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
<!-- <script type="text/javascript" src="../js/jquery.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="decorator.css"> -->
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
				<li><a href="/groupware/draft/list.do">전자결재</a></li>
				<li><a href="/groupware/schdule/list.do">일정관리</a></li>
				<li><a href="/groupware/notice/list.do">커뮤니티</a></li>
				<li><a href="/groupware/message/list.do">마이페이지</a></li>
				<li><a href="/groupware/member/list.do">사원관리</a></li>
			</ul>
		</div>
	</div>
	
	<div id="side_left">
		<ul>
			<li>커뮤니티</li>
			<li><a href="/groupware/notice/list.do">공지사항</a></li>
			<li><a href="/groupware/board/list.do">자유게시판</a></li>
			<li><a href="/groupware/data/list.do">자료실</a></li>
			<li><a href="/groupware/anonymous/list.do">익명게시판</a></li>
		</ul>
	</div>
	
	<div id="content_wrapper">
		<decorator:body />
	</div>
	
	<div id="footer">
		Copyright ⓒ ~~~~~
	</div>
</div>

</body>
</html>
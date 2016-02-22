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
<link rel="stylesheet" type="text/css" href="/groupware/css/decorator.css">
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
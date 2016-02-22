<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/groupware/css/main.css">
</head>
<body>
	<div class="division">
		<ul>
			<li class="head">공지사항</li>
			<c:forEach var="notice" items="${noticeList }">
				<a href="notice/view.do?no=${notice.no }">
					<li>
						${notice.wdate }
						${notice.title }
					</li>
				</a>
			</c:forEach>
		</ul>
	</div>
	
	<div class="division">
		<ul>
			<li class="head">일정관리</li>
			<c:forEach var="schedule" items="${scheduleList }">
				<a href="schedule/view.do?no=${schedule.no }">
					<li>
						${schedule.sdate }
						${schedule.title }
					</li>
				</a>
			</c:forEach>
		</ul>
	</div>
	
	<br>
	
	<div class="division">
		<ul>
			<li class="head">결재할 문서</li>
			<c:forEach var="draft" items="${draftList }">
				<a href="draft/proceed/view.do?no=${draft.no }">
					<li>
						${draft.regdate }
						${draft.title }
					</li>
				</a>
			</c:forEach>
		</ul>
	</div>
	
	<div class="division">
		<ul>
			<li class="head">받은 쪽지</li>
			<c:forEach var="message" items="${messageList }">
				<a href="message/view.do?no=${message.no }">
					<li>
						${message.sdate }
						${message.title }
					</li>
				</a>
			</c:forEach>
		</ul>
	</div>
</body>
</html>
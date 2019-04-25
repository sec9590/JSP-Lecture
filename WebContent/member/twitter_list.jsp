<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${param.memberName ne null}">
	<c:set var="memberName" scope="session" value="${param.memberName}" />
</c:if>

<html>
<head>
<title>twitter_list.jsp</title>
<style>
.footbutton {
	width: 4em;
	height: 2em;
	font-weight: bold;
	font-size: 10pt;
	background: powderblue;
}

a {
	text-decoration: none;
	color: steelblue;
	font-weight: bold;
}

a:hover {
	color: pink;
}
</style>
</head>
<body>
	<div align=center>
		<H3>My Simple Twitter</H3>
		<a href='MemberProcServlet?action=list&page=1'> 회원목록 </a> &nbsp; <a
			href='BbsProcServlet?action=list&page=1'> 게시판 </a> <br>
		<HR>
		<form action="/jspbook/member/TwitterProcServlet" method="POST">
			<!-- 세션에 저장된 이름 출력 -->
			<b>@${memberName}</b> &nbsp; <input type="text" name="msg">
			&nbsp; <input type="submit" value="Twit" class="footbutton">
		</form>
		<HR>
		<div align="left">
			<UL>
				<c:set var="msgs" value="${applicationScope.msgs}" />
				<c:if test="${msgs!='null'}">
					<c:forEach var="msg" items="${msgs}">
						<c:out value="<li>${msg}</li>" escapeXml="false" />
					</c:forEach>
				</c:if>
			</UL>
		</div>
	</div>
</body>
</html>
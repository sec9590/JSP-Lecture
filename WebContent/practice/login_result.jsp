<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
<style>
input[type=submit], [type=button] {
	width: 5em;
	height: 2em;
	font-weight: bold;
	font-size: 12pt;
}

input:hover, textarea:hover { /* 마우스 올라 올 때 */
	background: aliceblue;
}

input[type=text]:focus, input[type=password]:focus { /* 포커스 받을 때 */
	font-size: 100%;
}
</style>
</head>
<body>
	<center>
		<h3>Main</h3>	
		<hr />
		<c:if test="${param.id eq 'root'}">
			<c:if test="${param.password eq '1234'}">
				<c:if test="${param.user eq '관리자'}">
					<h4>관리자 화면입니다.</h4>
				</c:if>
				<c:if test="${param.user eq '사용자'}">
					<h4>사용자 화면입니다.</h4>
				</c:if>
			</c:if>
		</c:if>
	</center>

</body>
</html>
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
<title>Insert title here</title>
<style>
td {
	font-weight: bold;
}

body {
	background: #e8ebee;
	color: #9faab7;
	font-family: "Helvetica Neue", "Helvetica", "Roboto", "Arial",
		sans-serif;
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<h3>관심있는 악세사리</h3>
		<hr />
		<c:forEach var="item" items="${paramValues.product}"
			varStatus="status">
		${item} <c:if test="${not status.last}">, </c:if>
		</c:forEach>
		<br />
	</center>
</body>
</html>
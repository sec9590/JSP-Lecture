<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward_action.jsp</title>
</head>
<body>
	<h2>forward_action.jsp에서 footer.jsp 호출</h2>
	<hr>
	forward_action.jsp에서 호출한 메세지 입니다.
	<br>
	<!-- 완전히 다른페이지로 넘기기 -->
	<jsp:forward page="footer.jsp"> 
		<jsp:param value="test@test.net" name="email" />
		<jsp:param value="000-000-0000" name="tel" />
	</jsp:forward>
</body>
</html>
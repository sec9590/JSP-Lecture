<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h3>Member Login</h3>
		<hr />
		<!-- loginProc.jsp(컨트롤러 할경우) -->
		<!-- <form name="loginform" action="/jspbook/member/LoginProcServlet" method=post> -->
		<form name="loginform"
			action="/jspbook/member/MemberProcServlet?action=login" method=post>
			<table width=280 align=center>
				<tr align="center">
					<td align=left><h4>ID</h4></td>
					<td><input type="text" name="id" width="400" size="10" /></td>
				</tr>
				<tr align="center">
					<td align=left><h4>PassWord</h4></td>
					<td><input type="password" name="password" width="400"
						size="10" /></td>
				</tr>
				<tr height=20></tr>
				<tr>
					<td align="right"><input type="submit" value="로그인" name="B1"	style='background: skyblue'>&nbsp;&nbsp;</td>
					<td align="left"><input type="button" value="회원가입" name="B2" style='background: pink' onClick="location.href='/jspbook/member/register.jsp'" /></td>
				</tr>
			</table>
		</form>
		<br />
		<hr />
		<br />
	</center>

</body>
</html>
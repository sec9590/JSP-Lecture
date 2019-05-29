<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	background: #a5dc86;
}

input[type=text]:focus, input[type=password]:focus { /* 포커스 받을 때 */
	font-size: 100%;
}

.switch-field {
	display: flex;
	overflow: hidden;
	margin-left : 50px;
}

.switch-field input {
	position: absolute !important;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	border: 0;
	overflow: hidden;
}

.switch-field label {
	background-color: #e4e4e4;
	color: rgba(0, 0, 0, 0.6);
	font-size: 14px;
	line-height: 1;
	text-align: center;
	padding: 8px 16px;
	margin-right: -1px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.1);
	transition: all 0.1s ease-in-out;
}

.switch-field label:hover {
	cursor: pointer;
}

.switch-field input:checked+label {
	background-color: #a5dc86;
	box-shadow: none;
}

.switch-field label:first-of-type {
	border-radius: 4px 0 0 4px;
}

.switch-field label:last-of-type {
	border-radius: 0 4px 4px 0;
}
</style>
</head>
<body>
	<center>
		<h3>Member Login</h3>
		<hr />
		<!-- loginProc.jsp(컨트롤러 할경우) -->
		<form name="loginform"
			action="login_result.jsp" method=post>
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
				<tr>
				<tr align=center>				
					<td colspan=2>
					<div class="switch-field" align=center>
					<input type="radio" id="radio-one" name="user"
						value="관리자" /> <label for="radio-one">관리자</label> <input
						type="radio" id="radio-two" name="user" value="사용자" /> <label
						for="radio-two">사용자</label></div></td>
				</tr>
				<tr height=20></tr>
				<tr align=center>
					<td align="center" colspan=2><input type="submit" value="로그인" name="B1" style='background: #a5dc86'>&nbsp;&nbsp;</td>					
				</tr>
			</table>
		</form>
		<br />
		<hr />
		<br />
	</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
<style>
input[type=submit], [type=button] {
   width: 5em;  height: 2em;
    font-weight : bold;
    font-size : 12pt;
}
</style>
</head>
<body>
	<%
		String error = request.getParameter("error");
		System.out.println(error);
		if (error != null) {
			out.println("<script>alert('" + error + "')</script>");
		}
	%>
	<center>
		<h3>Member Login</h3>
		<hr />
		<form name="loginform" action=/jspbook/member/loginProc.jsp method=post>
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
					<td align="right"><input type="submit" value="로그인" name="B1"	style='background : skyblue'>&nbsp&nbsp</td>
					<td align="left"><input type="button" value="회원가입" name="B2" style='background : pink' onClick="location.href='/jspbook/member/register.jsp'"/></td>
				</tr>
			</table>
		</form>
		<br />
		<hr />
		<br />
	</center>

</body>
</html>
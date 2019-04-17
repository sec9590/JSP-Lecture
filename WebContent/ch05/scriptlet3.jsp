<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scriptlet3.jsp</title>
</head>
<body>
	<div align="center">
		<h2>스크립트릿 테스트3</h2>
		<hr>
		<br>
		<table border=1 align=center style="border-collapse: collapse;" width=200>
			<tr align=center style="background:skyblue">
				<td width=100 style="font-weight: bold">X</td>
				<td width=100 style="font-weight: bold">Y (=X*X)</td>
			</tr>
			<%
				for (int i = 1; i < 10; i++) {
					out.println("<tr align=center><td>" + i + "</td>" + "<td>" + i * i + "</td></tr>");
				}
			%>
		</table>
	</div>
</body>
</html>
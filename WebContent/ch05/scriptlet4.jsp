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
		<h2>스크립트릿 테스트4</h2>
		<hr>
		<br>
		<table border=1 align=center style="border-collapse: collapse;"	width=400>
			<tr align=center style="background: skyblue">
				<td width=100 style="background: white"></td>
				<%
					for (int i = 3; i < 10; i += 2)
						out.println("<td width=100 style='font-weight: bold'>" + i + "</td>");
				%>
			</tr>
			<%
				for (int i = 3; i < 10; i += 2) {
					out.print("<tr align=center><td style='background: skyblue; font-weight: bold'>" + i + "</td>");
					for (int j = 3; j < 10; j += 2) {
						out.println("<td>" + i * j + "</td>");
					}
					out.print("</tr>");
				}
			%>

		</table>
	</div>
</body>
</html>
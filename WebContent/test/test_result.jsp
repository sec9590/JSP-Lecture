<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
font-weight:bold;
}
</style>
</head>
<body>
	<center>
		<h3>설문조사 결과</h3>
		<hr />

		<table width=500 height=200 align=center>
			<tr>
				<td >이름</td>
				<td><%=request.getParameter("name")%></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=request.getParameter("gender")%></td>
			</tr>
			<tr>
				<td>좋아하는 계절</td>
				<td>
					<%
						String favorites[] = request.getParameterValues("favorite");
						for (String favorite : favorites) {
							out.println(favorite + ", ");
						}
					%>
				</td>
			</tr>			
		</table>
		<hr />
		<br />
	</center>
</body>
</html>
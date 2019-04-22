<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>request 테스트 결과 - 1</h2>
		<hr>
		<table>
			<tr>
				<td>name</td>
				<td><%=request.getParameter("username")%></td>
			</tr>
			<tr>
				<td>job</td>
				<td><%=request.getParameter("job")%></td>
			</tr>
			<tr>
				<td>interest field</td>
				<td>
					<%
						String favorites[] = request.getParameterValues("favorite");
						for (String favorite : favorites) {
							out.println(favorite + "<br>");
						}
					%>
				</td>
		</table>
		<h2>request 테스트 결과 - 2</h2>
		<hr>
		<table border=0>
			<tr>
				<td>1. 클라이언트 IP 주소 : <%=request.getRemoteAddr()%> <BR>
				 2.	요청 메서드 : <%=request.getMethod()%> <BR> 
				 <% 	Cookie cookie[] = request.getCookies(); %> 
				 3. <%=cookie[0].getName()%> 에 설정된 쿠키값 : <%=cookie[0].getValue()%><BR>
				 4. 프로토콜 : <%=request.getProtocol()%>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
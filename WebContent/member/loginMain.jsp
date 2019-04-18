<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%>
<%
	MemberDAO mDao = new MemberDAO();
	List<MemberDTO> memberlist = mDao.selectAll();
	mDao.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginMain.jsp</title>
<style>
tr, td {
	text-align: center;
}

input [type=button] {
	font-weight: bold;
	font-size: 10pt;
}
</style>
</head>
<body>
	<center>
		<h3>Member List</h3>
		<hr />
		<br>
		<table border=1 align=center style="border-collapse: collapse;"
			height=200 width=500>
			<tr style="background: powderblue">
				<th>아이디</th>
				<th>이름</th>
				<th>생일</th>
				<th>주소</th>
				<th></th>
			</tr>
			<%
				for (MemberDTO member : memberlist) {
					out.println("<tr><td>" + member.getId() + "</td>");
					out.println("<td>" + member.getName() + "</td>");
					out.println("<td>" + member.getBirthday() + "</td>");
					out.println("<td>" + member.getAddress() + "</td>");
					String uri = "MemberProcServlet?action=update&id=" + member.getId();
			%>
			<td>&nbsp;<input type="button" value="수정" name="B2" style='background:powderblue'onClick="location.href='<%=uri%>'" />&nbsp;</td></tr>
			<%
				}
			%>
		</table>
		<br>
	</center>
</body>
</html>
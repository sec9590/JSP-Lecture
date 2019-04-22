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
.button {
	font-weight: bold;
	font-size: 9pt;	
	border: 1px solid powderblue;
	background : white;
}
input[type=submit] {
    width: 5em;  height: 2.5em;
    font-weight : bold;
    font-size : 10pt;
    background : powderblue;
}
</style>
</head>
<body>
	<center>
		<h3>Member List</h3>
		<%=(String) session.getAttribute("memberName")%> 회원님 반갑습니다.<br>
		<hr />
		<br>		
		<table border=1 align=center style="border-collapse: collapse;"	height=300 width=600>
			<tr style="background: powderblue">
				<th>ID</th>
				<th>Name</th>
				<th>Birthday</th>
				<th>Address</th>
				<th></th>
			</tr>
			<%
				for (MemberDTO member : memberlist) {
					out.println("<tr><td>" + member.getId() + "</td>");
					out.println("<td>" + member.getName() + "</td>");
					out.println("<td>" + member.getBirthday() + "</td>");
					out.println("<td>" + member.getAddress() + "</td>");
					String updateUri = "MemberProcServlet?action=update&id=" + member.getId();
					String deleteUri = "MemberProcServlet?action=delete&id=" + member.getId();
			%>
			<td>&nbsp;<input class = "button" type="button" value="수정" name="B2" onClick="location.href='<%=updateUri%>'" />
			&nbsp;<input class = "button" type="button" value="삭제" name="B2" onClick="location.href='<%=deleteUri%>'" />&nbsp;</td></tr>
			<%
				}
			%>
		</table><br>
		<form name="loginform" action="/jspbook/member/MemberProcServlet?action=logout" method=post>
			<input type="submit" value="로그아웃" name="B2"/>		
		</form>
		<br>
	</center>
</body>
</html>
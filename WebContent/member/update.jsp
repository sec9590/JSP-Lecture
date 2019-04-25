<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" import="member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 수정</title>
<style>
input[type=submit], [type=reset] {
    width: 5em;  height: 2em;
    font-weight : bold;
    font-size : 12pt;
}
td{
    font-weight : bold;
    font-size : 12pt;
     width : 400px;
}
</style>
</head>
<body>	
	<c:set var="member" value="${requestScope.member}"/>
	<center>
		<h3>회원 수정</h3>
		<hr>
		<!-- <form name="updateForm" action="/jspbook/member/UpdateMemberServlet" method=post> -->
		<form name="updateForm" action="/jspbook/member/MemberProcServlet?action=execute" method=post>
			<table width=300 height=300 align=center>
				<tr>
					<td>아이디</td>
					<td><input type="hidden" value="${member.id}" name="id" width="400" size="10" /></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" width="400" value="${member.name}" size="10" /></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" name="birthday" value="${member.birthday}" width="400" size="10" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value="${member.address}" width="400" size="20" /></td>
				</tr>
				<tr height=20></tr>
				<tr>
					<td align="right"><input type="submit" value="회원수정" name="B1" style='background: skyblue' /></td>
					<td align="center"><input type="reset" value="다시입력" name="B2" style='background: pink' /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
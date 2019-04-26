<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >

<title>loginMain.jsp</title>
<style>
tr, td {
	text-align: center;
}
.button {
	border: 1px solid powderblue;
	background : white;
}
.button:hover{
	background : powderblue;
	font-weight :bold;
}
input[type=submit] {
    width: 5em;  height: 2.5em;
    font-weight : bold;
    font-size : 10pt;
    background : powderblue;
}
.list {
	text-decoration: none;
	color: steelblue;
	font-weight: bold;
}

a:hover {
	color : pink;
}

a {
	text-decoration:none ;
	font-weight : bold;
	color : black;
}
</style>
</head>
<body>
	<center>
		<h3>회원 목록</h3>
		<b>${memberName}</b> 회원님 반갑습니다.<br>
		<hr />	
		<a href='/jspbook/member/twitter_list.jsp' class="list"> 트위터 </a> &nbsp;
		<a href='BbsProcServlet?action=list&page=1'  class="list"> 게시판 </a> &nbsp;
		<a href='FileProcServlet?action=member' class="list"> 다운로드 </a>
		<br>
		<br>		
		<table border=1 align=center style="border-collapse: collapse; text-align:center;"	width=600>
			<tr height = 30 style="background: powderblue">
				<th>아이디</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>주소</th>
				<th></th>
			</tr>
			<c:set var="mList" value="${requestScope.MemberList}"/>
			<c:forEach var="member" items="${mList}">
			<tr height = 30>
				<td>${member.id}</td>
				<td>${member.name}</td>
				<td>${member.birthday}</td>
				<td>${member.address}</td>			
				<td>
					<input class = "button" type="button" value="수정" name="B2" onClick="location.href='MemberProcServlet?action=update&id=${member.id}'" />
			  &nbsp;<input class = "button" type="button" value="삭제" name="B2" onClick="location.href='MemberProcServlet?action=delete&id=${member.id}'" />
			  	</td>
			</tr>
			</c:forEach>
		</table>
		
		<br>
		<c:set var="pageList" value="${requestScope.pageList}"/>
		<c:forEach var="pageNo" items="${pageList}">
			${pageNo}
		</c:forEach>
		<br><br>
		
		<form name="loginform" action="/jspbook/member/MemberProcServlet?action=logout" method=post>
			<input type="submit" value="로그아웃" name="B2"/>					
		</form>
		<br>
	</center>
</body>
</html>
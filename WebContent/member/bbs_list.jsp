<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbs_list.jsp</title>
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
		<h3>게시판 목록</h3>
		<b>${memberName}</b> 회원님 반갑습니다.<br>
		<hr />
		<a href='MemberProcServlet?action=list&page=1' class="list"> 회원목록 </a> &nbsp;
		<a href='/jspbook/member/twitter_list.jsp' class="list"> 트위터 </a> <br>
		<br>
		<table border=1 align=center style="border-collapse: collapse;"
			width=600>
			<tr height = 30 style="background: powderblue">
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>최종 수정 날짜</th>
				<th></th>
			</tr>			
			<c:set var="bbsList" value="${requestScope.bbsMemberList}"/>
			<c:forEach var="bbs" items="${bbsList}">
			<tr height = 30>
				<td>${bbs.id}</td>
				<td><a href="BbsProcServlet?action=detail&id=${bbs.id}" ><span style=" font-weight:normal;">${bbs.title}</span></a></td>
				<td>${bbs.name}</td>
				<td>${bbs.date}</td>				
				<td>
					<button onclick="location.href='BbsProcServlet?action=update&id=${bbs.id}'"class="button">수정</button>&nbsp;
					<button onclick="location.href='BbsProcServlet?action=delete&id=${bbs.id}'" class="button">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</table>
		<br>
		<c:set var="pageList" value="${requestScope.pageList}"/>
		<c:forEach var="pageNo" items="${pageList}">
			${pageNo}
		</c:forEach>
		<BR>
		<BR>
		<form name="writeform" action="bbs_write.jsp" method=post>
			<input type="submit" class="footbutton" value="글쓰기" name="B2" />
		</form>
		<br>
	</center>
</body>
</html>
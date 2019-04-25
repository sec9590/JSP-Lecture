<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:set var="bbs" value="${requestScope.bbs}"/>
		<h3>상세조회</h3>		
		<hr/>		
		<br>
		<table border=1 align=center style="border-collapse: collapse;"	width=500>		
			<tr>
			<td style = "background : powderblue; font-weight : bold;">글번호</td>
			<td>${requestScope.id}</td>
			</tr>
			<tr>
			<td style = "background : powderblue; font-weight : bold;">제목</td>
			<td>${bbs.title}</td>
			</tr>
			<tr>
			<td style = "background : powderblue; font-weight : bold;">글쓴이</td>
			<td>${bbs.name}</td>
			</tr>	
			<tr>
			<td style = "background : powderblue; font-weight : bold;">날짜</td>
			<td>${bbs.date}</td>
			</tr>		
			<tr>
			<td style = "background : powderblue; font-weight : bold;">내용</td>
			<td>${bbs.content}</td>
			</tr>
		</table><br>
		<form name="form" action="BbsProcServlet?action=list&page=1"method=post>
			<input type="submit" value="글목록" name="B2"/>					
		</form>
		<br>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%>
	<%		//request.setCharacterEncoding("UTF-8");
		BbsDTO bbs= (BbsDTO) request.getAttribute("bbs");
	%>
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
		<h3>상세조회</h3>
		글 목록 <%=request.getParameter("id")%> 번 상세조회입니다.<br>
		<hr />		
		<br>
		<table border=1 align=center style="border-collapse: collapse;"	height=200 width=500>		
			<tr>
			<td style = "background : powderblue; font-weight : bold;">제목</td>
			<td><%=bbs.getTitle()%></td>
			</tr>
			<tr>
			<td style = "background : powderblue; font-weight : bold;">글쓴이</td>
			<td><%=bbs.getName()%></td>
			</tr>	
			<tr>
			<td style = "background : powderblue; font-weight : bold;">날짜</td>
			<td><%=bbs.getDate()%></td>
			</tr>		
			<tr>
			<td style = "background : powderblue; font-weight : bold;">내용</td>
			<td><%=bbs.getContent().replaceAll("\r\n", "<br>")%></td>
			</tr>
		</table><br>
		<form name="form" action="bbs_list.jsp"method=post>
			<input type="submit" value="글목록" name="B2"/>					
		</form>
		<br>
	</center>
</body>
</html>
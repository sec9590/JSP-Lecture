<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="member.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	List<BbsDTO> bbslist = (List<BbsDTO>) request.getAttribute("bbsMemberList");
	List<String> pageList = (List<String>) request.getAttribute("pageList");
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
.footbutton {
    width: 5em;  height: 2.5em;
    font-weight : bold;
    font-size : 10pt;
    background : powderblue;
}
.list {
text-decoration:none ;
color : steelblue;
font-weight : bold;
}
a:hover{
color : #FF9999;
}
a{
text-decoration:none ;
color : black;

}
</style>
</head>
<body>
<center>
		<h3>게시판 목록</h3>
		<%=(String) session.getAttribute("memberName")%> 회원님 반갑습니다.<br>
		<hr />	
		<a href='/jspbook/member/loginMain.jsp' class="list"> 회원목록 </a> &nbsp;		
		<a href='/jspbook/member/twitter_list.jsp' class="list"> 트위터 </a>		
		<br>
		<br>			
		<table border=1 align=center style="border-collapse: collapse;"	height=300 width=600>
			<tr style="background: powderblue">
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>최종수정날짜</th>
				<th></th>
			</tr>
			<%			
				for (BbsDTO bbs : bbslist) {		
					
					String updateUri = "BbsProcServlet?action=update&id=" + bbs.getId();
					String deleteUri = "BbsProcServlet?action=delete&id=" + bbs.getId();
					String detailUri = "BbsProcServlet?action=detail&id=" + bbs.getId();
					out.println("<tr><td>" + bbs.getId() + "</td>");
					out.println("<td><a href='"+detailUri+"'>" + bbs.getTitle() + "</a></td>");
					out.println("<td>" + bbs.getName() + "</td>");
					out.println("<td>" + bbs.getDate() + "</td>");
					
			%>
			<td>&nbsp;<input class = "button" type="button" value="수정" name="B2" onClick="location.href='<%=updateUri%>'" />
			&nbsp;<input class = "button" type="button" value="삭제" name="B2" onClick="location.href='<%=deleteUri%>'" />&nbsp;</td></tr>
			<%
			 }
			%>
		</table><br>
		<%
	for (String bmPage: pageList)
		out.print(bmPage);
	%>
	<BR>
		<form name="writeform" action="bbs_write.jsp"method=post>
			<input type="submit" class="footbutton" value="글쓰기" name="B2"/>							
		</form>
		
		<br>
	</center>
</body>
</html>
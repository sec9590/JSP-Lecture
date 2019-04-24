<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	// HTML 폼에서 username으로 전달된 값을 가지고 옴 
	String username = request.getParameter("memberName");
	
	// username이 null 이 아닌 경우 세션에 값을 저장
	if(username != null) {
		session.setAttribute("memberName",username);
	}
%>
<html>
<head>
<title>twitter_list.jsp</title>
<style>
.footbutton {
    width: 4em;  height: 2em;
    font-weight : bold;
    font-size : 10pt;
    background : powderblue;
}
a{
text-decoration:none ;
color : steelblue;
font-weight : bold;
}
a:hover{
color : pink;
}
</style>
</head>
<body>
<div align=center>
<H3>My Simple Twitter!!</H3>

	<a href='/jspbook/member/loginMain.jsp'> 회원목록 </a> &nbsp;
		<a href='/jspbook/member/bbs_list.jsp'> 게시판 </a>
		<br>
		<HR>		
<form action="/jspbook/member/TwitterProcServlet" method="POST">
	<!-- 세션에 저장된 이름 출력 -->
	<b>@<%=session.getAttribute("memberName") %></b> &nbsp; <input type="text" name="msg"> &nbsp; <input type="submit" value="Twit" class="footbutton">
</form>
<HR>
<div align="left">
<UL>
<%
	// application 내장객체를 통해 msgs 이름으로 저장된 ArrayList를 가지고 옴
	ArrayList<String>msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	//msgs가 null 이 아닌 경우에만 목록 출력
	if(msgs != null) {
		for(String msg : msgs) {
			out.println("<LI>"+msg+"</LI>");
		}
	}
%>
</UL>
</div>
</div>
</body>
</html>
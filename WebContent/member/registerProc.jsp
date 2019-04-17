<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Member.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" scope="page" class="Member.MemberDTO"></jsp:useBean>
<jsp:setProperty name="member" property="*" />
<%    
	MemberDAO mDao = new MemberDAO();
	mDao.insertMember(member);
	mDao.close();
	response.sendRedirect("loginMain.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registerProc.jsp</title>
</head>
<body>

</body>
</html>

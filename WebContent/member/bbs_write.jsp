<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bbs_write.jsp</title>
<style>
input[type=submit], [type=reset] {
    width: 5em;  height: 2em;
    font-weight : bold;
    font-size : 12pt;
}
td{
	font-weight : bold;
    font-size : 12pt;
    width : 400
}
</style>
</head>
<body>
	<center>
		<h3>글쓰기</h3>
		<hr />		
		<%String writeurl = "/jspbook/member/BbsProcServlet?action=write&memberid=" + (Integer) session.getAttribute("memberId");  %>
		<form name="bbswriteform" action=<%=writeurl%> method=post>
			<table width=400 height=300 align=center>				
				<tr>
					<td width=100>제목</td>
					<td><input type="text" name="title" width="400"	size="38" /></td>
				</tr>
				<tr>
					<td width=100>내용</td>
					<td><textarea name="content" cols="40" rows="8" ></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align=center><input type="submit" value="작성완료" name="B1" style='background : skyblue'/>
					<input type="reset" value="다시입력" name="B2" style='background : pink'/></td>
				</tr>
			</table>
		</form>
		<hr />
		<br />
	</center>
</body>
</html>
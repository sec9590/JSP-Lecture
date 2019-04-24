<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>
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
	<%		//request.setCharacterEncoding("UTF-8");
		BbsDTO bbs= (BbsDTO) request.getAttribute("bbs");	
	%>
	<center>
		<h3>글 수정</h3>
		<hr>
		
		<form name="updateForm" action="BbsProcServlet?action=execute&id=<%=bbs.getId()%>" method=post>
			<table width=400 height=300 align=center>
				<tr>
					<td>글번호</td>
					<td><%=bbs.getId()%></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td><%=request.getAttribute("name")%></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" value="<%=bbs.getTitle()%>" width="400" size="37" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content"cols="40" rows="8" ><%= bbs.getContent().replaceAll("<br>", "\r\n")%></textarea></td>
				</tr>
				<tr></tr>				
				<tr>
					<td colspan="2" align=center><input type="submit" value="글수정" name="B1" style='background : skyblue'/>
					<input type="reset" value="다시입력" name="B2" style='background : pink'/></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
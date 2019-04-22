<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>ch06 : selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); 
//sessin에 username이름으로 html폼의 입력된 값 저장
	session.setAttribute("username",request.getParameter("username"));
%>
<body>
<div align="center">
	<H2>상품선택</H2>
	<HR>
	<%=session.getAttribute("username") %>님 환영합니다!!!!
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		상품 : 
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT><br>
		수량 : 
		<input type = "text" name = "quantity" size=5><br><br>
		<input type="submit" value="추가"/>
		<input type="button" value="계산" onClick="location.href='/jspbook/ch06/shoppingbasket/checkOut.jsp'"/>
	</form>
</div>
</body>
</html>





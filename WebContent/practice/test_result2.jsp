<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td {
	font-weight: bold;
}
</style>
</head>
<body>
	<center>
		<h3>설문조사 결과</h3>
		<hr />

		<h4>내가 선택한 상품은?</h4>
		<%
			String products[] = request.getParameterValues("product");
			for (String product : products) {
				out.println(product + "<br>");
			}
		%>
		
		<h4>물품의 가격은?</h4>
		<%
			int sum = 0;
			for (String product : products) {
				if (product.equals("모자"))
					sum += 10000;
				if (product.equals("가방"))
					sum += 20000;
				if (product.equals("신발"))
					sum += 15000;
			}
			out.println(sum + " 원");
		%>

		<hr />
		<br />
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add Cart OK</title>
</head>


<body>
	<%
	
		session = request.getSession();
		out.print("Added Class Code: " + session.getAttribute("AddedClsCode") + "<br>");
		out.print("Added Member Code: " + session.getAttribute("AddedMemCode"));
		
	%>
	
	<form action="cart" method="post">
		<input type="submit" value="장바구니페이지로">
	</form>
</body>
</html>
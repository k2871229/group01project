<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>장바구니 더하기</title>
</head>
<body>
	<%
	
		// session 객체에 AddedClsCode라는 session이 있으면
		if(session.getAttribute("AddedClsCode") != null && session.getAttribute("AddedMemCode") != null){
			// AddCartOk.jsp로 응답
			response.sendRedirect("addcartok.jsp");
		}
	
	%>

	<form action="AddCartCheck" method="post">
		강의번호: <input type="text" name="cls_code"><br>
		회원번호: <input type="text" name="mem_code"><br>
		<input type="submit" value="장바구니 및 회원번호 등록">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>login</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/shop-homepage.css" rel="stylesheet">
  
   <!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
   integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous"/>
</head>

<body>
      <%@ include file="menu.jsp" %>

  <div class="container " align="center">

    <div class="row">
      <div class="col-lg-12 mt-5">
		<div class="container mt-4">
			<h2>로그인</h2>
		</div>
	</div>
	</div>
	
	<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>

	
	
	<div class="container" align="center">
	<div class="row">
	
	<div class="col-lg-3 my-4">
	<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="아이디" name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input	type="password" class="form-control" placeholder="비밀번호" name='j_password' required>
				</div>
				</form>
	<div class="notact my-4" align="left">
	<p>아직 계정이 없으신가요? </p>
	<button class="btn btn-lg btn-primary btn-block" onclick="location.href='signup.jsp'" style="background-color: white; color: black; border: 2px solid black; padding:14px 5px">
	회원가입</button>
	</div>
	
	</div>
	<div class="col-lg-2 my-4">
				<button style="color: white; background:black; padding:30px 5px" class="btn btn-lg btn-block" type="submit">로그인</button>
				</div>
	
	<div class="col-lg-7">
				<%@ include file="carousel.jsp" %>
	</div>
	</div>
	</div>
	

				 
	
	</div>


<br><br><br><br><br>
	
	 <!-- Footer -->
<%@ include file="footer.jsp" %>


  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>